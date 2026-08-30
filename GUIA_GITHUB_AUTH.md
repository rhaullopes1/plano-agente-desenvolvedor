# 🔐 GUIA: Conectar GitHub ao Agente

## ⚠️ ANTES DE COMEÇAR

Este é um processo sensível que envolve **credenciais de acesso**. Vou explicar cada passo, e você autoriza apenas quando tiver certeza.

---

## 📋 O que você vai fazer

Gerar um **Personal Access Token (PAT)** no GitHub que permitirá ao agente:
- ✅ Criar branches automaticamente
- ✅ Fazer commits com commits automáticos
- ✅ Abrir e fechar pull requests
- ✅ Integrar com Lovable e Google Cloud

---

## 🔑 PASSO 1: Acessar Configurações do GitHub

1. Acesse: **https://github.com/settings/personal-access-tokens/new**
2. Ou:
   - GitHub.com → Seu perfil (canto superior direito)
   - Settings → Developer settings → Personal access tokens → Tokens (classic)
   - Clique em "Generate new token"

---

## 🎯 PASSO 2: Configurar o Token

Preencha assim:

| Campo | Valor |
|-------|-------|
| **Token name** | `agente-desenvolvedor` |
| **Expiration** | 90 dias |
| **Scopes** | Ver lista abaixo |

### ✅ Escopos Necessários

Marque estas caixas:
- [ ] `repo` - Acesso completo a repositórios
- [ ] `workflow` - Atualizar arquivos GitHub Actions
- [ ] `gist` - Criar gists
- [ ] `read:user` - Ler dados do usuário

---

## 💾 PASSO 3: Guardar o Token com Segurança

**IMPORTANTE:** GitHub mostra o token UMA VEZ SÓMENTE.

1. Copie o token (começa com `ghp_`)
2. **NÃO compartilhe** com ninguém
3. **NÃO comite** no repositório
4. Envie para mim de forma segura

Vou armazenar em um local seguro do repositório (não versionado).

---

## ✅ Próximo Passo

Quando você gerar o token e me enviar, eu:

1. ✅ Salvo o token de forma segura
2. ✅ Testo a conexão com o GitHub
3. ✅ Configuro o agente para usar
4. ✅ Confirmo que está funcionando

---

## ❓ Dúvidas?

- **Posso usar um token antigo?** Sim, se ainda estiver válido
- **E se perder o token?** Você pode gerar um novo e deletar o antigo
- **Qual o risco?** Se alguém pegar seu token, pode acessar seus repositórios

---

## 🚀 Autorização

**Você autoriza que eu guarde seu Personal Access Token para configurar o agente?**

Quando confirmar:
1. Você gera o token no GitHub
2. Me envia de forma segura
3. Eu armazeno e testo
4. Pronto para a próxima etapa!

