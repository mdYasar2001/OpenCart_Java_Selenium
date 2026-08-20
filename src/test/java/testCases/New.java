package testCases;

import org.testng.annotations.Test;

import utilities.JsonDataProvider;

public class New {
	@Test(dataProvider = "loginJsonData", dataProviderClass=JsonDataProvider.class)
	public void printDataValue(String email, String pswd, String exp) {
		System.out.println(email+pswd+exp);
	}

}
