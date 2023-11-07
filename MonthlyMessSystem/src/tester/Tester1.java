package tester;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import static utils.MessUtils.*;
import static utils.MessValidations.*;

import mess.Customer;
import mess.Plan;

public class Tester1 {
	public static void main(String[] args) {
		Map<Integer,Customer> customers = new HashMap<Integer, Customer>();
		try(Scanner sc=new Scanner(System.in)) {
			boolean exit=false;
			while(exit!=true) {
				try {
					System.out.println("0:Exit 1. Sign up Customer\r\n"
							+ "2. If already register then sign in\r\n"
							+ "3. Change Password  \r\n"
							+ "4:Sort Customer as per \r\n"
							+ "5:. Unsubscribe customer according plan duration (month wise (1, 3, 6, 12))\r\n"
							+ ""
							+ "6:Display all customers");
					switch (sc.nextInt()) {
					case 1:
						System.out.println("Enter int customerId, String firstName, String lastName, String email, String password,\n String address,\r\n"
								+ "			LocalDate registerDate, LocalDate planEndDate, Plan plan, double final_amount");
						int cid=sc.nextInt();
						customers.put(cid,validateAll(cid, sc.next(),sc.next(),sc.next(),sc.next(), sc.next(), sc.next(), sc.next(),sc.next(), sc.nextDouble(), customers));
						System.out.println(customers.get(cid));
						break;
					case 2:
						System.out.println("Enter email and password");
						if(customerLoginValidation(sc.next(), sc.next(), customers)!=0) {
							System.out.println("Login Successful");
						}
						break;
					case 3:
						System.out.println("Enter email and password");
						if(customerLoginValidation(sc.next(), sc.next(), customers)!=0) {
							System.out.println("Login Successful");
							int cd=customerLoginValidation(sc.next(), sc.next(), customers);
							System.out.println("Enter new password");
							Customer cc=customers.get(cd);
							cc.setPassword(sc.next());
							customers.replace(cd, cc);
						}
						
						break;
					case 6:
						System.out.println("---Displaying Customers---");
						customers.entrySet().stream().forEach(System.out::println);
						break;
					case 0:
						exit=true;
						break;
					
					}
					
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
		}
	}

}
