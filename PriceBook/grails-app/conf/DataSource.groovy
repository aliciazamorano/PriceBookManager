dataSource {
    pooled = true
    driverClassName = "mongodb.jdbc.MongoDriver"
//    username = "sa"
//    password = ""
}
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mongo://localhost/PriceBook"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mongo://localhost/PriceBook"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mongo://localhost/PriceBook"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
	
	grails {
		mongo {
			host = "127.0.0.1"
			port = 27107
			databaseName = "PriceBook"
		}
	}
}
