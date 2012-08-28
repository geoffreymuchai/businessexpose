includeTargets << grailsScript("_GrailsInit")

eventTestStart = { testName ->
        if (currentTestPhase == 'functional' || currentTestPhase == 'integration') {
                def sql = Sql.newInstance('jdbc:h2:mem:testDb', 'sa', '', 'org.h2.Driver')
                sql.execute "SET REFERENTIAL_INTEGRITY FALSE"
                sql.eachRow("SHOW TABLES") { table -> sql.execute('DELETE FROM ' + table.TABLE_NAME) } 
                sql.execute "SET REFERENTIAL_INTEGRITY TRUE"
        }

        if(currentTestPhase == 'unit') {
                println 'Adding standard FrontlineSMS metaclass modifications...'
                frontlinesms2.MetaClassModifiers.addAll()
        }
}

