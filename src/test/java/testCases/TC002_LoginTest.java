package testCases;

import org.testng.Assert;
import org.testng.annotations.*;

import pageObjects.Dashboard;
import pageObjects.HomePage;
import pageObjects.LoginPage;
import testBase.BaseClass;

public class TC002_LoginTest extends BaseClass {
	
	@Test(groups = {"Sanity", "Master"})
	public void verifyLoginTest() {
		logger.info("****Starting TC0002 login Test Case****");
		try {
			HomePage hp = new HomePage(driver, wait);
			LoginPage lp = new LoginPage(driver, wait);
			Dashboard dp = new Dashboard(driver, wait);
			
			logger.info("****Clicking Login Btn****");
			hp.clickMyAcoount();
			hp.clickLogin();
			
			logger.info("****Entering Valid Login Details****");
			lp.enterEmail(p.getProperty("email"));
			lp.enterPswd(p.getProperty("password"));
			lp.clickLogin();
			
			logger.info("****Validating My Account message****");
			String myAccMsg = dp.getMessageheadingValue();
			Assert.assertEquals(myAccMsg, "My Account");
		} catch (Exception e) {
			logger.info("****Bug found****");
			System.out.println(e.getMessage());
			logger.debug("Debug Logs...");
			logger.error("Test Failed...");
			Assert.fail();
		}
		logger.info("****Completed TC002 Login Test Case****");
	}
}
