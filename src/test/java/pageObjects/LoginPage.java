package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.WebDriverWait;

public class LoginPage extends BasePage {
	public LoginPage(WebDriver driver, WebDriverWait wait) {
		super(driver, wait);
	}
	
	@FindBy(name="email")
	WebElement txtEmail;
	
	@FindBy(name="password")
	WebElement txtPassword;
	
	@FindBy(xpath="//input[@type='submit']")
	WebElement btnLogin;
	
	public void enterEmail(String email) {
		txtEmail.sendKeys(email);
	}
	
	public void enterPswd(String pswd) {
		txtPassword.sendKeys(pswd);
	}

	public void clickLogin() {
		btnLogin.click();
	}
}
