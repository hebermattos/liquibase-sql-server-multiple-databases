$databases = @("db1", "db2")

foreach ($database in $databases) {
    $command = "liquibase --defaultsFile=`"{DATABASE}\liquibase.properties`" update"
    $command = $command.Replace('{DATABASE}', $database)
    Invoke-Expression $command
}