package testCases;

import org.testng.Assert;
import org.testng.annotations.*;
import pageObjects.*;
import testBase.BaseClass;

public class TC001_AccountRegistrationTest extends BaseClass{
	
	@Test(groups = {"Regression", "Master"})
	public void verifyAccountRegistration() {
		
		logger.info("****Starting TC0001 AccountRegistrartion Test Case****");
		try {
			HomePage hp = new HomePage(driver, wait);
			AccountRegistrationPage arp = new AccountRegistrationPage(driver, wait);
			
			hp.clickMyAcoount();
			logger.info("****Clicked on My Account Btn****");
			hp.clickRegister();
			logger.info("****Clicked on Register Btn****");
			
			arp.setFirstName("SHAIK");
			arp.setLastName("MUHAMMAD YASAR");
			arp.setEmail(randomnString()+"@gmail.com");
			arp.setTelephone("9014220599");
			arp.setPassword("Virat@123");
			arp.setConfirmPswd("Virat@123");
			arp.clickPrivacyPolicy();
			arp.clickContinueBtn();
	
			logger.info("****Validating Expected Message****");
			String ConformationMess = arp.getConfirmationMessage();
			if(ConformationMess.equals("Your Account Has Been Created!")) {
				Assert.assertTrue(true);
			} else {
//				logger.error("Test Failed...");
				logger.debug("Debug Logs...");
				Assert.assertTrue(false);
			}
		} catch (Exception e) {
			logger.error("Test Failed...");
			logger.debug("Debug Logs...");
			Assert.fail();
		}
		logger.info("****Completed TC0001 AccountRegistrartion Test Case****");
	}
}
