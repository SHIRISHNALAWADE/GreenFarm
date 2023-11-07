package utils;

import java.time.LocalDate;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import exception.MessException;
import mess.Customer;
import mess.Plan;

public class MessValidations {
	public static Plan parseAndvalidatePlan(String plan) throws MessException {
		for (Plan p : Plan.values()) {
			if (p.equals(Plan.valueOf(plan.toUpperCase())))
				return p;
		}
		throw new MessException("INVALID PLAN");
	}

	public static double parseAndValidateAmount(double amt, Plan pl) throws MessException {
//		for(Plan p: Plan.values()) {
		if (pl.getCharge() == amt)
			return amt;
//		}
		else
			throw new MessException("INVALID AMOUNT");
	}

	public static void checkForDuplicates(int id, Collection<Customer> custs) throws MessException {
		for (Customer c : custs) {
			if (c.equals(new Customer(id)))
				throw new MessException("DUPLICATE ENTRY");
		}
	}

	public static Customer validateAll(int customerId, String firstName, String lastName, String email, String password,
			String address, String registerDate, String planEndDate, String plan, double final_amount,
			Map<Integer, Customer> cmap) throws MessException {
		Plan pl = parseAndvalidatePlan(plan);
		Customer c = new Customer(customerId, firstName, lastName, email, password, address,
				LocalDate.parse(registerDate), LocalDate.parse(planEndDate), pl,
				parseAndValidateAmount(final_amount, pl));
		checkForDuplicates(customerId, cmap.values());
		return c;
	}

//	public static boolean customerLoginValidation(String email, String pass, Map<Integer, Customer> cmap) {
//		for (Customer c : cmap.values()) {
//			if (c.getEmail().equals(email) && c.getPassword().equals(pass))
//				return true;
//		}
//
//		return false;
//	}
	public static int customerLoginValidation(String email, String pass, Map<Integer, Customer> cmap) {
		for (Customer c : cmap.values()) {
			if (c.getEmail().equals(email) && c.getPassword().equals(pass))
				return c.getCustomerId();
		}

		return 0;
	}

}
