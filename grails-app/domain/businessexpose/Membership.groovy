package businessexpose

import org.apache.commons.lang.builder.HashCodeBuilder

class Membership {
	enum LEVEL {ONE, TWO, THREE, FOUR, FIVE}
	BexposeUser leader

	static hasMany = [bexposeUsers:BexposeUser]

    static transients  = ['members']
	
    static constraints = {
    }

    def getMembers() {
        def users = bexposeUsers - leader
        users
    }

    def getLevel() {
        def size = bexposeUsers.size()
        if(size < 10) {
            LEVEL.ONE
        } else if(size >= 10 && size < 20) {
            LEVEL.TWO
        } else if(size >= 20 && size < 30) {
            LEVEL.THREE
        } else if(size >= 30 && size < 40) {
            LEVEL.FOUR
        } else if(size >= 40 && size <= 50) {
            LEVEL.FIVE
        }
    }

    def getMembersByLevel() {
        def membershipInstanceUserList = [:]
        List members = this.getMembers().toList()
        def memberInstanceList = members.collate( 10, true )
        def levels =  LEVEL.values()*.toString()*.toLowerCase()
        memberInstanceList.size().times{
            membershipInstanceUserList."${levels[it]}" = memberInstanceList[it]
        }
        membershipInstanceUserList
    }
}
