package businessexpose

class Account {
	//TODO 
	//find out how to calculate the end date of a month from groovy
	//find out how to specify a particular date from the date api
	//static final Date SUBSCRIPTION_DEADLINE_DATE = 
	//static final Date COMMISSION_PAYMENT_DATE = 

	double registrationFee
	double monthlySubscription
	Date dateOfsubscriptionPayment
	double commission
	Date dateOfCommissionPayment

	static belongsTo = [bexposeUser: BexposeUser]
	static hasMany = [payments: Payment]

    static constraints = {
    }
}
