# Objectivo

Vais fazer uma implementação em loop, criar cada uma das seguntes funcionalidades uma a uma, em sequencia.

# Processo

Vais criar cada uma das seguintes funcionalidades, uma a auma, em segquecia, até terminar a lista.
Para cada uma das fucnionalidades vais:

1. analisar o problema
2. encontrar uma solução
3. implementar a solução
4. criar documentação
5. escrever uma Mensagem do commit detalhada, se cordo com as regras abaixo
6. fazer commit
7. pegar na funcionalidade seguinte e regressar ao ponto 1


# Mensagem do commit


## Formato de Saída

```
<tipo>: <título em PT-PT>

- Ponto em PT-PT
- Outro ponto em PT-PT

---
<tipo>: <título em EN-UK>

- Point in EN-UK
- Another point in EN-UK
```

## Tipos de Commit

- `feat` - Nova funcionalidade
- `fix` - Correção de bug
- `docs` - Documentação
- `style` - Formatação
- `refactor` - Refatoração
- `test` - Testes
- `chore` - Manutenção
- `perf` - Performance
- `ci` - CI/CD
- `build` - Build

## Exemplos

Input: "adicionei novas tabelas SQL para concursos"

Output:
```
feat: adicionar scripts SQL para criação de tabelas de concursos

- Adicionadas tabelas tbl_base_gov_anuncios_exp e tbl_base_gov_anuncios_master
- Prepara a base de dados para gerir anúncios de concursos

---
feat: add SQL scripts to create contest tables

- Added tbl_base_gov_anuncios_exp and tbl_base_gov_anuncios_master tables
- Prepares database for handling contest announcements
```

---


# Funcionalidades a implementar


1. "Clean phone numbers from CRM export: remove dashes, spaces, parentheses"
já existe Extrair só dígitos mas este deve preservar o +, caso exista, como por exemplo o +351 para portugal.

2. "Split full names into first/last columns"	
Dividir texto por delimitador	falta (ex: DividirTexto)
opções:
- so primeiro e ultimo nomes ou tambem nomes do meio


- nomes do meio aparecem todos juntos, exemlo:

"Antoine Laurent de Lavoisier"
passa a ser "Antoine,Laurent de,Lavoisier"

    - opções: com ou sem nomes do meio:
        "Antoine Laurent de Lavoisier"
        op1: "Antoine,Laurent de,Lavoisier"
        op2: "Antoine,Lavoisier"

- por defeito o separador deve ser a virgula mas pode-se escolher facultativamente

- opção de apresentar o ultimo nome primeiro e em maiusculas
        op1: "Antoine,Lavoisier"
        op2: "LAVOISIER,Antoine"

- O separador por ser um espaço se o utilizador quiser

3. "Extract email addresses from a text column"	ExtrairEmail

4. extrair um cosigo postal de uma string
    opção de codigos postais para varios paises, ex:
    extrairCodigoPostal("string com codigo"; pt)

5. "Extract text between parentheses"	ExtrairEntre

6. "Extract TLDs names from URLs"	ExtrairDominio

7. extrair dominios de emails
ex: email_de_exemplo@dominio.pt vai devolver dominio.pt 

8. extrair nome do email

9. extrair dominios de emails
ex: email_de_exemplo@dominio.pt vai devolver email_de_exemplo  


10. "Extract hashtags from tweets/comments"	ExtrairHashtags

11. "Extract currency values from descriptions"	ExtrairMoedas

12. valida NIF portugues