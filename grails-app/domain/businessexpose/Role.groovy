package businessexpose

class Role {

	String authority

	static mapping = {
		cache true
		table 'sec_role'
	}

	static constraints = {
		authority blank: false, unique: true
	}
}
