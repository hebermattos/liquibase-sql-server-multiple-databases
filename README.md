## liquibase

### basic usage with SQL Server

create a project:

```
c:\MyLiquiBaseProject\liquibase init project
```

configure the connection string in liquibase.properties for each database:

```
liquibase.command.url=jdbc:sqlserver://localhost:1433;databaseName=mydatabase;integratedSecurity=false;encrypt=false 

```

create and configure a changelog file to use multiple sql files, and use it in liquibase.properties. we will use the folder 'changes' to store the files:

```
<?xml version="1.0" encoding="UTF-8"?> 
<databaseChangeLog
    xmlns="http://www.liquibase.org/xml/ns/dbchangelog"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:ext="http://www.liquibase.org/xml/ns/dbchangelog-ext"
    xmlns:pro="http://www.liquibase.org/xml/ns/pro"
    xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog
        http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-latest.xsd
        http://www.liquibase.org/xml/ns/dbchangelog-ext http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-ext.xsd
        http://www.liquibase.org/xml/ns/pro http://www.liquibase.org/xml/ns/pro/liquibase-pro-latest.xsd">
    <includeAll  path="changes"/>  
</databaseChangeLog>
```

liquibase.properties:

```
changeLogFile=changelog.xml
```

- run the dockercompose, that will up a sqlserver with database a called 'mydatabase' and the Adminer UI
- run 'update-all.ps1' to update all databases 
- you can check the changes on Adminer UI http://localhost:8081/


