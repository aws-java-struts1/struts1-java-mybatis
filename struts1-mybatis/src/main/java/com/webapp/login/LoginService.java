/**
 * 
 */
package com.webapp.login;

/**
 * @author FrancisJohn-Munoz
 *
 */
public class LoginService {

	public boolean isUserValid(String user, String password) {
		if (user.equals("silverius") && password.equals("1234"))
			return true;
		return false;
	}
}
