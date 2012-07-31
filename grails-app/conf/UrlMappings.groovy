class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"bexposeUser", action:"list")
		"500"(view:'/error')
	}
}
