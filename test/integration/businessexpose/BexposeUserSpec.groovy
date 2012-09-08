package businessexpose

import spock.lang.*

class BexposeUserSpec extends grails.plugin.spock.IntegrationSpec {

    def "can create a BexposeUser"() {
        when:
        	def user = new BexposeUser(name:"John Doe", email:"test@email.com", username:"johndoe", password:"pass").save()
        then:
            BexposeUser.count()
        	!user.hasMembers()
    }

    def "can add a BexposeUser as a membership leader"() {
        when:
            def user = new BexposeUser(name:"John Doe", email:"test@email.com", username:"johndoe", password:"pass").save()
            def membership = new Membership(leader:user)
        then:
            membership.validate()
            !membership.bexposeUsers
    }

    def "can add members to a BexposeUser"() {
         given:
            def user = new BexposeUser(name:"John Doe", email:"test@email.com", username:"johndoe", password:"pass").save(flush:true)
            def membership = new Membership(leader:user).save()
        when:
            def jane = new BexposeUser(name:"Jane Doe", email:"test@email.com", username:"janedoe", password:"pass").save()
            membership.addToBexposeUsers(jane)
        then:
            membership.count == 1
            user.hasMembers()
            user.members.size() == 1
            user.level == Membership.LEVEL.ONE
    }

    def "can get count of users added by a BexposeUser"() {
        when:
            def johnDoe = new BexposeUser(name:"John Doe", email:"test@email.com", username:"johndoe", password:"pass").save(flush:true, failOnError:true)
            def membership = new Membership(leader:johnDoe)
            10.times { membership.addToBexposeUsers(new BexposeUser(name:"user $it", email:"user$it@email.com", username:"user$it", password:"pass$it")) }
            membership.save()
        then:
            membership.bexposeUsers.size() == 10
            johnDoe.level == Membership.LEVEL.TWO
            
    }

}
