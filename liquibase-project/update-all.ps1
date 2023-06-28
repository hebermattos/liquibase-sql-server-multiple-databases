
$configs = Get-ChildItem -Recurse ".\properties"  | Select-Object Name
$command = "liquibase --defaultsFile=`"properties\{CONFIG}`" update"

foreach ($config in $configs) {
    $command = $command.Replace('{CONFIG}', $config.Name)
    Invoke-Expression $command
}