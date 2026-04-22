# Manuel para Modelos Gratuitos via OpenRouter (Recomendado)

O OpenRouter é um agregador que te dá acesso a quase todos os modelos existentes (Llama 3, Mistral, Gemma, Phi-3). Muitos deles são completamente gratuitos.

1 Como configurar:

    1.Cria uma conta no OpenRouter.ai.
    2. Cria uma API Key (podes usar modelos com a tag "Free" sem
    3. carregar saldo.
    4. No teu opencode.json, adiciona o OpenRouter como provedor:


```json
json

{
  "providers": {
    "openrouter": {
      "api_key": "A-TUA-CHAVE-AQUI",
      "base_url": "https://openrouter.ai"
    }
  }
}
```

#  No teu agente personalizado (build.md), designas o modelo assim:
    model: openrouter/meta-llama/llama-3-8b-instruct:free
 
llama-3-8b-instruct:free 



Para usares o OpenRouter (com modelos gratuitos) como o teu agente de Build principal, o ficheiro deve combinar a configuração técnica (frontmatter) com instruções que garantam que ele saiba manipular ficheiros.
Cria o ficheiro em ~/.config/opencode/agents/build.md (ou na pasta do projeto) com o seguinte conteúdo:
markdown

### FIcheiro build.md
```
---
name: build
description: Agente de Build usando modelos gratuitos do OpenRouter
model: openrouter/meta-llama/llama-3-70b-instruct:free
mode: primary
---

# Instruções de Sistema
És o agente de **Build** principal do OpenCode. O teu objetivo é escrever, editar e organizar código de forma profissional e funcional.

## Regras de Execução:
1. **Analisa antes de agir:** Sempre que te pedirem uma alteração, verifica primeiro os ficheiros existentes.
2. **Qualidade de Código:** Segue as melhores práticas da linguagem solicitada (clean code, tipagem, documentação).
3. **Ferramentas:** Tens permissão para ler e escrever no sistema de ficheiros. Usa sempre blocos de código com o caminho do ficheiro indicado, por exemplo:
   ```python
   # filepath: path/to/file.py
   print("exemplo")

Use o código com cuidado.
Comportamento:

    Sê conciso e foca-te na solução técnica.
    Se encontrares um erro, explica brevemente o que causou e como o corrigiste.
    Se o modelo gratuito atual estiver lento ou instável, sugere ao utilizador trocar para outro modelo ":free" no frontmatter.

Contexto Adicional
Foca-te sempre em entregar código que compile ou execute sem erros imediatos. Se precisares de instalar dependências, indica os comandos necessários.
``` 
```



### Notas importantes:
1. **O Modelo:** No exemplo usei o `llama-3-70b-instruct:free`, que é um dos melhores gratuitos. Podes trocar por `google/gemma-2-9b-it:free` se preferires.
2. **API Key:** Lembra-te que para isto funcionar, deves ter a tua chave do OpenRouter configurada no ficheiro `opencode.json` como te mostrei na mensagem anterior.
3. **Prioridade:** Ao definires `mode: primary`, este ficheiro vai "esconder" o agente de build original do OpenCode e usar este teu.

Já tens a tua **API Key** do OpenRouter pronta para testarmos se a ligação está a funcionar?

As respostas de IA podem incluir erros. Saiba mais
