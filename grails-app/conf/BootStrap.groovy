import businessexpose.User
import businessexpose.Role
import businessexpose.UserRole


class BootStrap {

    def init = { servletContext ->
    	initializeUsers()
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
}
