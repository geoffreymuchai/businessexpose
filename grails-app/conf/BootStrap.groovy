import businessexpose.*
import grails.util.Environment


class BootStrap {

    def init = { servletContext ->
    	initializeUsers()
    	switch(Environment.current) {
    		case Environment.DEVELOPMENT:
    			initializeBexposeUsers()
	    		break
    	}
    }
    
    def destroy = {
    }

    def initializeUsers() {
    	def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(flush: true, failOnError: true)
		def agentRole = Role.findByAuthority('ROLE_AGENT') ?: new Role(authority: 'ROLE_AGENT').save(flush: true, failOnError: true)
		
		def adminUser = User.findByUsername('admin') ?: new User(username: 'admin', enabled: true, password: 'default').save(flush: true, failOnError: true)
		def agentUser = User.findByUsername('agent') ?: new User(username: 'agent', enabled: true, password: 'default').save(flush: true, failOnError: true)
		
		if (!UserRole.findByUserAndRole(adminUser,adminRole))
			UserRole.create adminUser, adminRole, true
			
		if (!UserRole.findByUserAndRole(agentUser, agentRole))
			UserRole.create agentUser, agentRole, true
    }

    def initializeBexposeUsers() {
    	println "###Initializing BexposeUsers###"
        def johnDoe = new BexposeUser(name:"John Doe", email:"test@email.com", username:"johndoe", password:"pass").save(flush:true, failOnError:true)
        def membership = new Membership(leader:johnDoe).save(flush:true, failOnError:true)
        10.times { membership.addToBexposeUsers(new BexposeUser(name:"user $it", email:"user$it@email.com", username:"user$it", password:"pass$it")) }
    	membership.save(flush:true, failOnError:true)
        println "membership users::${membership.bexposeUsers}"

    }
}
