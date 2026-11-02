Contexto:
Estás a trabalhar diretamente num repositório de código ativo. O projeto é um addon que irá suportar múltiplos idiomas (pt-PT, pt-BR e en-US), pelo que a consistência e clareza dos nomes é crítica para manutenção, escalabilidade e internacionalização.

Tarefa:
Analisa todo o repositório e identifica funções, métodos e utilitários com nomes pouco claros, inconsistentes ou que não seguem boas práticas de naming.

Objetivo:
Melhorar a qualidade geral do código através de naming mais profissional, consistente e alinhado com standards do mercado (incluindo boas práticas da Microsoft e convenções modernas de APIs).

Instruções detalhadas:

1. Percorre o código e identifica:

   * Funções com nomes ambíguos, genéricos ou pouco descritivos
   * Inconsistências de naming (ex: mistura de estilos, verbos diferentes para ações iguais)
   * Abreviações pouco claras
   * Nomes que não refletem corretamente a responsabilidade da função

2. Para cada caso encontrado, apresenta:

   * Caminho do ficheiro
   * Nome atual da função
   * Novo nome sugerido
   * Justificação clara e objetiva

3. Garante que todas as sugestões:

   * Estão em inglês
   * Usam verbos apropriados (ex: get, set, create, update, fetch, validate, etc.)
   * Seguem um padrão consistente (camelCase ou PascalCase conforme o projeto)
   * São descritivas mas concisas

4. Identifica padrões globais e sugere:

   * Um guia de naming para o projeto
   * Convenções a aplicar (ex: prefixos, sufixos, organização por domínio)

5. (Opcional mas recomendado)

   * Sugere melhorias estruturais se detectares funções mal nomeadas devido a responsabilidades mal definidas

Restrições:

* NÃO alterar comportamento do código
* NÃO renomear automaticamente — apenas sugerir
* NÃO focar em performance ou lógica, apenas naming e clareza

Output esperado:

* Lista estruturada de sugestões por ficheiro
* Secção final com recomendações globais de naming

Nota:
Prioriza clareza, intenção explícita e alinhamento com práticas usadas em código profissional de larga escala.
