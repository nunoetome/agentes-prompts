# Criação do Agente Git Commits para OpenCode

**Data:** 2026-04-04

---

## Objetivo

Criar um agente personalizado para o OpenCode que seja especialista em gerar mensagens de commit git bilingues (PT-PT e EN-UK), seguindo as melhores práticas do mercado (Conventional Commits).

## Requisitos do Agente

- Debe gerar mensagens em Português Europeu (PT-PT) e Inglês Britânico (EN-UK)
- Seguir o formato Conventional Commits
- Usar best practices do mercado
- Separar as duas versões com `---`

## Ficheiros Criados

| Ficheiro | Localização |
|----------|-------------|
| `agentes_open_code/git-commits.md` | Pasta local do projeto |
| `~/.config/opencode/agents/git-commits.md` | Pasta global do OpenCode |

## Formato de Saída

```
<tipo>(<escopo>): <título em PT-PT>

- Bullet point em PT-PT
- Outro bullet em PT-PT

---
<tipo>(<scope>): <título em EN-UK>

- Bullet point in EN-UK
- Another bullet in EN-UK
```

## Exemplo de Uso

Para usar o agente no OpenCode:
```
@git-commits analise as seguintes alterações e cria mensagem de commit:
[cola aqui o git diff ou descrição das alterações]
```

## Estrutura de Pastas Criada

```
agentes e prompts/
├── .git/
├── agentes_open_code/
│   └── git-commits.md
└── conversas_contexto/
```

## Tipo de Agente

- **Mode:** subagent
- **Permissions:** edit, bash, webfetch bloqueados (apenas leitura)
- **Temperature:** 0.2
