package businessexpose

import org.apache.commons.lang.builder.HashCodeBuilder

class Membership {
	enum LEVEL {ONE, TWO, THREE, FOUR}
	BexposeUser leader

	static hasMany = [bexposeUsers:BexposeUser]

    static transients  = ['members']
	
    static constraints = {
    }

    def getMembers() {
        def users = bexposeUsers - leader
        println "users:: $users"
        users
    }
}
