## Script de importação e exportação de conexões do Windows Admin Center - Créditos Gabriel Luiz - www.gabrielluiz.com ##

# Libera a execução do script.

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned


# Carregue o módulo.

Import-Module "$env:ProgramFiles\windows admin center\PowerShell\Modules\ConnectionTools"


# Importar conexões (incluindo tags) de um arquivo .csv.

Import-Connection "https://wac2.gabrielluiz.local" -fileName "C:\WAC\Import-WAC-Conexoes.csv"

# Exportar conexões (incluindo tags) para um arquivo .csv.

Export-Connection "https://wac2.gabrielluiz.local" -fileName "C:\WAC\Export-WAC-Conexoes.csv"


# Importe conexões (incluindo tags) de arquivos .csv e remova quaisquer conexões que não estejam explicitamente no arquivo importado usando o parâmetro de opção -prune.

Import-Connection "https://wac2.gabrielluiz.local" -fileName "C:\WAC\Import-WAC-Conexoes.csv" -prune


# Se estiver usando o Windows Admin Center instalado no Windows 10, modo local, utilize o exemplo abaixo, informe o endereço local seguido pela porta de acesso:


# Importar conexões (incluindo tags) de um arquivo .csv modo de instalação local.

Import-Connection "https://localhost:6516" -fileName "C:\WAC\Import-WAC-Conexoes.csv"


Export-Connection "https://localhost:6516" -fileName "C:\WAC\Export-WAC-Conexoes.csv"


<#

Referência:

https://docs.microsoft.com/pt-br/windows-server/manage/windows-admin-center/configure/use-powershell?WT.mc_id=WDIT-MVP-5003815

#>