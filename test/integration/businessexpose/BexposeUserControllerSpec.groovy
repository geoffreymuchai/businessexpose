package businessexpose

import spock.lang.*

class BexposeUserControllerSpec extends grails.plugin.spock.IntegrationSpec {
	def controller

	def setup() {
		controller = new BexposeUserController()
	}

	def "addMember should attach the new member to the introducing member"() {
		setup:
			def introducingMember = new BexposeUser(name:"John Doe", email:"test@email.com", username:"johndoe", password:"pass").save(failOnError:true)
			def membership = new Membership(leader:introducingMember).save(failOnError:true)
			controller.params.currentUser = introducingMember.id
			controller.params.name = "Geoffrey"
			controller.params.email = "geoffrey@me.com"
			controller.params.username = "geof"
			controller.params.password = "pass"
		when:
			controller.addMember()
		then:
			introducingMember.members.size() == 1
			
	}
}
