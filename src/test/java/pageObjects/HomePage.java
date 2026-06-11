package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.WebDriverWait;

public class HomePage extends BasePage {
	
	public HomePage(WebDriver driver, WebDriverWait wait) {
		super (driver, wait);
	}
	
	@FindBy(xpath = "//span[normalize-space(text())='My Account']")
	private WebElement myAccountBtn;
	
	@FindBy(xpath = "//a[normalize-space(text())='Register']")
	private WebElement registerBtn;
	
	@FindBy(xpath = "//a[normalize-space(text())='Login']")
	private WebElement loginBtn;
	
	public void clickMyAcoount() {
		myAccountBtn.click();
	}
	
	public void clickRegister() {
		registerBtn.click();
	}
	
	public void clickLogin() {
		loginBtn.click();
	}
}
