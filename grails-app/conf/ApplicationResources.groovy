modules = {
	common {
		dependsOn "jquery, application, bootstrap"
	}

    application {
        resource url:'js/application.js'
        resource url:'js/plugins.js'
        resource url:'js/script.js'
        resource url:'js/libs/modernizr-2.5.3.min.js'
    }
}