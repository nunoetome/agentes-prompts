# Últimas 10 Interações - Contexto de Migração

## 1. Reorganização de deploy e controlo de ficheiros tratados

### User

reorganização dos ficheiros de deploy antigos, corrigindo nomes correctos das versões. passa a registar ficheoros tratados. corrige nome da tabela tratados. limpo codigo obsoleto. retirada confirmação de ficheiro ja trtado no p4_upload_to_sql.py

### Assistant

```text
refactor: Reorganização de ficheiros de deploy e melhoria do controlo de ficheiros processados

- Reorganizados ficheiros antigos de deploy
- Corrigidos nomes de versões para nomenclatura correta e consistente
- Implementado registo de ficheiros tratados no pipeline
- Corrigido nome da tabela de ficheiros tratados
- Removido código obsoleto e redundante
- Eliminada verificação de "ficheiro já tratado" em p4_upload_to_sql.py
- Simplificação do fluxo de processamento de ficheiros
```

---

## 2. Preparação final de deploy

### User

termoada preparação para deploy

### Assistant

```text
chore: Terminada preparação para deploy

- Concluída preparação do sistema para deploy
- Sistema pronto para publicação em ambiente alvo
```

---

## 3. Erro SCP no deploy

### User

C:\Windows\System32\OpenSSH\scp.exe: local "./logging_component/" is not a regular file
C:\Windows\System32\OpenSSH\scp.exe: failed to upload file ./logging_component/ to /home/kiwa-pt/scripts/contrataciondelestado/src/

### Assistant

Explicação do erro:

* `scp` estava a tentar copiar uma pasta sem usar `-r`
* Solução:

```bash
scp -r ./logging_component/ user@server:/destino/
```

Sugestão adicional:

* usar `rsync -av` para deploys mais robustos

---

## 4. Finalização da versão + orquestrador

### User

terminada ver~sao e preparado deploy. criado script orquestrator para carregar todos os scripts organizadamente.

### Assistant

```text
feat: Versão finalizada e deploy preparado com script orquestrador

- Criado script orquestrador para execução organizada dos scripts
- Automatizado carregamento sequencial do pipeline
- Melhorado controlo operacional do ETL
```

---

## 5. Limpeza do repositório Git

### User

criado repositorio novo baseado no repositorio antigo, para contornar problemas de ficheiros grandes demais em historico

### Assistant

```text
chore: Criado novo repositório baseado no anterior para contornar histórico com ficheiros grandes

- Removido histórico problemático
- Mantido estado funcional atual do código
```

---

## 6. Limpeza de ficheiros grandes

### User

removidos ficheiros e lipo repositorio de ficheiros grandes

### Assistant

```text
chore: Removidos ficheiros e otimizado repositório de ficheiros grandes
```

---

## 7. Git LFS verificação

### User

corri git lfs ls-files zipados documentos

### Assistant

```text
chore: Executado Git LFS ls-files e verificação de ficheiros zipados/documentos
```

---

## 8. Deploy Linux beta

### User

preparado deploy para testes, versão v3.0-linux-beta

### Assistant

```text
chore: Preparado deploy para testes v3.0-linux-beta
```

---

## 9. Reorganização e melhorias de código

### User

reorganizado codifo, melhorados mensagens e indicadores,

### Assistant

```text
refactor: Reorganizado código e melhoradas mensagens e indicadores
```

---

## 10. OpenPLACSP compactado

### User

compatactação e subdivisão de open-placsp-2.2-mod-2.0 para evitar Git LFS

### Assistant

```text
chore: Compactação e subdivisão de open-placsp-2.2-mod-2.0 para evitar uso de Git LFS
```

---

# Estado Atual do Projeto

## ETL

* Licitaciones:

  * INSERT funcional
  * UPDATE funcional
  * DEV funcional
* Resultados:

  * INSERT funcional
  * UPDATE funcional
  * DEV funcional
* PROD:

  * ainda em rollout/aplicação

## Base de Dados

* Procedures criadas para:

  * licitaciones DEV/PROD
  * resultados DEV/PROD
* View criada:

  * vw_es_contrataciondelestado_resultados_com_licitaciones

## Deploy

* Deploy Linux preparado
* Script orquestrador criado
* Estrutura reorganizada
* Logging estabilizado

## OpenPLACSP

* Mantida apenas:

  * open-placsp-2.2-mod-2.0
* Versão compactada para evitar Git LFS

## TODO Atual

* Aplicar pipeline DEV em PROD
* Melhorar automação multi-ficheiro
* Otimização forte de performance
* Refinar logs e monitorização
* Melhorar deploy automatizado
