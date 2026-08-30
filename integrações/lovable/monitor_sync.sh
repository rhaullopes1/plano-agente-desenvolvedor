#!/bin/bash

# 🔄 Script de Monitoramento Lovable-GitHub
# Detecta automaticamente quando a sincronização está pronta

echo "🔍 Iniciando monitoramento de sincronização Lovable-GitHub..."
echo "⏱️  Aguardando conexão... (timeout: 30 minutos)"
echo ""

TIMEOUT=1800  # 30 minutos em segundos
START_TIME=$(date +%s)
CHECK_INTERVAL=30

while true; do
  CURRENT_TIME=$(date +%s)
  ELAPSED=$((CURRENT_TIME - START_TIME))
  
  # Verifica se timeout foi atingido
  if [ $ELAPSED -gt $TIMEOUT ]; then
    echo "❌ Timeout: Lovable não conectou em 30 minutos"
    echo "⚠️  Verifique:"
    echo "   1. Você completou o login no Lovable?"
    echo "   2. Autorizou o GitHub?"
    echo "   3. Conectou o repositório?"
    exit 1
  fi
  
  # Verifica branches recentes criadas por Lovable
  LOVABLE_BRANCHES=$(git branch -r --list "origin/lovable/*" 2>/dev/null | wc -l)
  
  # Verifica commits recentes de Lovable
  LOVABLE_COMMITS=$(git log --all --author="lovable" --oneline 2>/dev/null | wc -l)
  
  # Verifica se repositório tem configuração de Lovable
  LOVABLE_CONFIG=$(git config --get lovable.connected 2>/dev/null)
  
  # Critérios de sucesso
  if [ $LOVABLE_BRANCHES -gt 0 ] || [ $LOVABLE_COMMITS -gt 0 ] || [ "$LOVABLE_CONFIG" == "true" ]; then
    echo ""
    echo "✅ ============================================"
    echo "✅ SINCRONIZAÇÃO DETECTADA!"
    echo "✅ ============================================"
    echo ""
    echo "📊 Estatísticas de Conexão:"
    echo "   • Branches Lovable: $LOVABLE_BRANCHES"
    echo "   • Commits Lovable: $LOVABLE_COMMITS"
    echo "   • Tempo decorrido: ${ELAPSED}s"
    echo "   • Status: ✅ CONECTADO"
    echo ""
    echo "🎉 Lovable está sincronizado com GitHub!"
    echo "📝 Registrando conexão bem-sucedida..."
    
    # Registra timestamp de sucesso
    echo "✅ Sincronização completada em: $(date)" >> "integrações/lovable/SYNC_LOG.txt"
    
    exit 0
  fi
  
  # Exibe progresso
  PROGRESS=$((ELAPSED * 100 / TIMEOUT))
  echo -ne "\r⏳ Verificando... ${PROGRESS}% (${ELAPSED}s/${TIMEOUT}s)"
  
  sleep $CHECK_INTERVAL
done
