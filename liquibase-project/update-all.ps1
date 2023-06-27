$databases = Get-Content -Path .\databases.txt 

foreach ($database in $databases) {
    $command = "liquibase --defaultsFile=`"{DATABASE}\liquibase.properties`" update"
    $command = $command.Replace('{DATABASE}', $database)
    Invoke-Expression $command
}