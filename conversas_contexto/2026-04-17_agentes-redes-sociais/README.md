# Agentes de Redes Sociais - Configuração

## Histórico da Conversa

Criação de uma equipa de agentes especializados em redes sociais chefiada por um gestor/coordenador.

## Estrutura Criada

```
agentes_open_code/equipa-redes-sociais/
├── gestor-redes-sociais-chefe.md    # Agente principal (mode: agent)
├── social-instagram.md             # Especialista Instagram
├── social-facebook.md             # Especialista Facebook
├── social-linkedin.md             # Especialista LinkedIn
├── social-tiktok.md                # Especialista TikTok
├── social-youtube.md              # Especialista YouTube
├── social-twitter.md               # Especialista Twitter/X
├── social-pinterest.md             # Especialista Pinterest
└── social-equipa.md               # Documentação da equipa
```

## Alterações Feitas

- `gestor-redes-sociais-chefe.md`: alterado de `mode: subagent` para `mode: agent`

## Perguntas Feitas

1. **Instalação** - Como instalar os agentes? Onde colocar?
2. **Subpasta** - Funciona numa subpasta?

## Respostas

- Colocar os ficheiros `.md` em `.opencode/agents/`
- Sim, funciona em subpasta, mas requer configuração no JSON
- Opção mais simples: copiar para a raiz `.opencode/agents/`

## Próximos Passos

Copiar os agentes para `.opencode/agents/` para ficarem disponíveis no OpenCode.

## Data

17 de Abril de 2026