package testCases;

import org.testng.Assert;
import org.testng.annotations.Test;

import pageObjects.Dashboard;
import pageObjects.HomePage;
import pageObjects.LoginPage;
import testBase.BaseClass;
import utilities.JsonDataProvider;

public class TC000_LoginDDTJson extends BaseClass{
	@Test(dataProvider = "loginJsonData", dataProviderClass=JsonDataProvider.class) // getting dataProvider from different class
	public void verifyLoginDDTJson(String email, String pswd, String exp)
	{
		logger.info("****Starting TC0003-Login Test DDT****");
		
		try {
			// Homepage
			HomePage hp = new HomePage(driver, wait);
			hp.clickMyAcoount();
			hp.clickLogin();
			
			// Login
			LoginPage lp = new LoginPage(driver, wait);
			lp.enterEmail(p.getProperty("email"));
			lp.enterPswd(p.getProperty("password"));
			lp.clickLogin();
			
			// My Account
			Dashboard dp = new Dashboard(driver, wait);
			boolean myAccMsg = dp.getMessageheading();
			
			if(exp.equalsIgnoreCase("valid")) {
				if(myAccMsg==true) {
					dp.clkLogout();
					Assert.assertTrue(true);
				} else {
					Assert.assertTrue(false);
				}
			} else if(exp.equalsIgnoreCase("In valid")) {
				if(myAccMsg==true) {
					dp.clkLogout();
					Assert.assertTrue(false);
				} else {
					Assert.assertTrue(true);
				}
			}
		} catch (Exception e) {
			logger.info("****Exception error found****");
			Assert.fail();
		}
		logger.info("****Finished TC0003-Login Test DDT****");
	}
}
