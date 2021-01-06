## Script de levantamento de informações do Active Directory - Objeto Computadores - Créditos Gabriel Luiz - www.gabrielluiz.com ##


##################################################################  REQUISITOS  ######################################################################

# Libera a execução do script.

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned


# Importa o modulo AD.

Import-Module ActiveDirectory


##################################################################  CRIAÇÃO DAS PASTAS  ######################################################################


# Cria as pasta para execução do levantamento de informações do Active Directory usando o nome do domínio.


$nome=@(get-addomain | select-object forest).forest


New-Item -Path "c:\Levantamento dos computadores do ADDS $nome" -ItemType directory


################################################################## COMPUTADORES DO DOMÍNIO  ####################################################################

# Todos os computadores.

Get-ADComputer -Filter * -Properties Name, PasswordLastSet, OperatingSystem, DNSHostName, DistinguishedName, Enabled | select Name, PasswordLastSet, OperatingSystem, DNSHostName, DistinguishedName, Enabled | Export-Csv "c:\Levantamento dos computadores do ADDS $nome\todososcomputadores.csv" -Encoding UTF8


<#

Referências:

https://docs.microsoft.com/en-us/powershell/module/addsadministration/get-adcomputer?view=win10-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item?view=powershell-7.1&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/import-module?view=powershell-7.1&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/addsadministration/get-addomain?view=win10-ps&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-object?view=powershell-7.1&WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.1&WT.mc_id=WDIT-MVP-5003815

#>