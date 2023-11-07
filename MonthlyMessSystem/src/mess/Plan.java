package mess;

public enum Plan {
	 MONTHLY(3000), QUARTERLY(11700), HALF_YEAR(17500), YEARLY(32000);
	private double charge;

	Plan(int i) {
		this.charge=i;
		// TODO Auto-generated constructor stub
	}

	public double getCharge() {
		return charge;
	}

	public void setCharge(double charge) {
		this.charge = charge;
	}
	
	 

}
