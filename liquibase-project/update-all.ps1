
$configs = Get-ChildItem -Recurse ".\properties"  | Select-Object Name

foreach ($config in $configs) {
    $command = "liquibase --defaultsFile=`"{CONFIG}`" update"
    $command = $command.Replace('{CONFIG}', $config.Name)
    Invoke-Expression $command
}