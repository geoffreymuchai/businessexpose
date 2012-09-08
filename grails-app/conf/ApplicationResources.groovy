modules = {
	common {
		dependsOn "jquery, jquery-ui, application, bootstrap"
        resource url:'css/layout.css'
	}

    application {
        resource url:'js/application.js'
        resource url:'js/plugins.js'
        resource url:'js/script.js'
        resource url:'js/libs/modernizr-2.5.3.min.js'
        resource url:'js/libs/d3.v2.min.js'
    }

    overrides {
	'jquery-theme' {
		resource id: 'theme', url:[dir:'jquery-ui', file:"themes/medium/jquery-ui-1.8.11.custom.css"]
	}
    }
}
