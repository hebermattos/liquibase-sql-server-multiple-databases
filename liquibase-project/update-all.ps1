
$configs = Get-ChildItem -Recurse ".\properties"  | Select-Object Name
$command = "liquibase --defaultsFile=`"properties\{CONFIG}`" update --show-summary=off"

foreach ($config in $configs) {
    $command = $command.Replace('{CONFIG}', $config.Name)
    #Write-Host $command
    Invoke-Expression $command
}