# 📁 Estrutura do Repositório

## Organização de Pastas

```
plano-agente-desenvolvedor/
├── PLANO_EXECUCAO.md          # Este plano maestro
├── AGENT_CONFIG.json           # Configuração do agente
├── ESTRUTURA_REPOSITORIO.md   # Esta documentação
├── README.md                   # Overview do projeto
│
├── /projetos/                  # Projetos criados pelo agente
│   └── /projeto-exemplo/
│       ├── src/
│       ├── package.json
│       └── README.md
│
├── /integrações/               # Configurações de integração
│   ├── /github/
│   │   ├── workflows/          # GitHub Actions
│   │   └── config.json
│   ├── /lovable/
│   │   ├── templates/
│   │   └── config.json
│   ├── /google-cloud/
│   │   ├── terraform/
│   │   └── config.json
│   └── /n8n/
│       ├── workflows/
│       └── config.json
│
├── /documentação/              # Docs geradas automaticamente
│   ├── /api/
│   ├── /guias/
│   └── /arquitetura/
│
├── /logs/                      # Registros de execução
│   ├── /agente/
│   ├── /deploys/
│   └── /erros/
│
└── /.github/
    └── /workflows/             # CI/CD do agente
        └── agent-execution.yml
```

## O que cada pasta faz

| Pasta | Função | Gerenciada por |
|-------|--------|---|
| `/projetos/` | Armazena apps criadas pelo agente | Agente |
| `/integrações/` | Credenciais e configs de ferramentas | Agente + Você |
| `/documentação/` | Docs auto-geradas | Agente |
| `/logs/` | Histórico de tudo que o agente faz | Agente |
| `/.github/workflows/` | Automações do agente | Agente |

## Fluxo de Trabalho

1. **Você especifica** um novo projeto
2. **Agente cria** estrutura em `/projetos/`
3. **Agente faz commit** com mensagem automática
4. **GitHub Actions** executa testes
5. **Agente publica** documentação
6. **Log registra** tudo em `/logs/`

## Próximas Configurações

- [ ] GitHub Secrets (tokens)
- [ ] Branch Protection Rules
- [ ] GitHub Actions Workflows
- [ ] Lovable Integration
- [ ] Google Cloud Integration
