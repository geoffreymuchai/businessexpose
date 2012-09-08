package businessexpose

class BexposeUser extends User {

	String name
	String email
    String username
    String password

	boolean activated

    static transients  = ['level']

	static belongsTo = [membership:Membership]

    static constraints = {
    	email email:true
        membership nullable:true
    }

    def hasMembers() {
    	Membership.findByLeader(this) as boolean
    }

    def getMembers() {
        if(hasMembers()) {
            Membership.findByLeader(this).bexposeUsers
        }
    }

    def getLevel() {
        if(hasMembers()) return membership.level
        else {
            println "called"
            Membership.LEVEL.ONE
        }
    }

}
