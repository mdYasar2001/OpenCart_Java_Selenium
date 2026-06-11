package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class AccountRegistrationPage extends BasePage {
	
	public AccountRegistrationPage(WebDriver driver, WebDriverWait wait) {
		super (driver, wait);
	}
	
	@FindBy(name = "firstname")
	WebElement txtFirstName;
	
	@FindBy(name = "lastname")
	WebElement txtLastName;

	@FindBy(name = "email")
	WebElement txtEmail;
	
	@FindBy(name = "telephone")
	WebElement txtTelephone;
	
	@FindBy(name = "password")
	WebElement txtPassword;
	
	@FindBy(name = "confirm")
	WebElement txtConfirmPswd;
	
	@FindBy(name = "agree")
	WebElement chkPrivacyPolicy;
	
	@FindBy(xpath = "//input[@type='submit']")
	WebElement btnContinue;
	
	@FindBy(xpath = "//h1[normalize-space(text())='Your Account Has Been Created!']")
	WebElement msgConfirmation;
	
	public void setFirstName(String firstName) {
		txtFirstName.sendKeys(firstName);
	}
	
	public void setLastName(String lastName) {
		txtLastName.sendKeys(lastName);
	}
	
	public void setEmail(String email) {
		txtEmail.sendKeys(email);
	}
	
	public void setTelephone(String tel) {
		txtTelephone.sendKeys(tel);
	}
	
	public void setPassword(String pswd) {
		txtPassword.sendKeys(pswd);
	}
	
	public void setConfirmPswd(String pswd) {
		txtConfirmPswd.sendKeys(pswd);
	}
	
	public void clickPrivacyPolicy() {
		chkPrivacyPolicy.click();
	}
	
	public void clickContinueBtn() {
		btnContinue.click();
	}

	public String getConfirmationMessage() {
		try {
			WebElement msgConfirmationText = wait.until(ExpectedConditions.elementToBeClickable(msgConfirmation));
			return (msgConfirmationText.getText());
		} catch (Exception e) {
			return(e.getMessage());
		}
	}
}