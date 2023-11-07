package mess;

import java.time.LocalDate;
import java.util.Objects;

public class Customer {
	private int CustomerId; 
	private String firstName; 
	private String lastName;
	private String email;
	private String password;
	private String address;
	private LocalDate registerDate;
	private LocalDate planEndDate;
	private Plan plan;
	private double final_amount;
	
	public Customer(int customerId, String firstName, String lastName, String email, String password, String address,
			LocalDate registerDate, LocalDate planEndDate, Plan plan, double final_amount) {
		super();
		CustomerId = customerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.address = address;
		this.registerDate = registerDate;
		this.planEndDate = planEndDate;
		this.plan = plan;
		this.final_amount = final_amount;
	}
	

	public Customer(int customerId) {
		super();
		CustomerId = customerId;
	}


	public int getCustomerId() {
		return CustomerId;
	}

	public void setCustomerId(int customerId) {
		CustomerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public LocalDate getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(LocalDate registerDate) {
		this.registerDate = registerDate;
	}

	public LocalDate getPlanEndDate() {
		return planEndDate;
	}

	public void setPlanEndDate(LocalDate planEndDate) {
		this.planEndDate = planEndDate;
	}

	public Plan getPlan() {
		return plan;
	}

	public void setPlan(Plan plan) {
		this.plan = plan;
	}

	public double getFinal_amount() {
		return final_amount;
	}

	public void setFinal_amount(double final_amount) {
		this.final_amount = final_amount;
	}

	@Override
	public String toString() {
		return "Customer [CustomerId=" + CustomerId + ", firstName=" + firstName + ", lastName=" + lastName + ", email="
				+ email + ", address=" + address + ", registerDate=" + registerDate + ", planEndDate=" + planEndDate
				+ ", plan=" + plan + ", final_amount=" + final_amount + "]";
	}

//	@Override
//	public int hashCode() {
//		return Objects.hash(CustomerId);
//	}

	@Override
	public boolean equals(Object obj) {
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Customer other = (Customer) obj;
		return CustomerId == other.CustomerId;
	}

	 
	
	
	
	

}
