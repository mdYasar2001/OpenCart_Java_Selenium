package pageObjects;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Dashboard extends BasePage {
	public Dashboard(WebDriver driver, WebDriverWait wait) {
		super(driver, wait);
	}
	
	@FindBy(xpath="//h2[normalize-space(text())='My Account']")
	WebElement msgHeading;
	
	@FindBy(xpath="//div[contains(@class, 'list-group')]//a[normalize-space(text())='Logout']")
	WebElement btnLogout;
	
	public String getMessageheadingValue() {
		try {
			WebElement msgHeadingValue = wait.until(ExpectedConditions.elementToBeClickable(msgHeading));
			return (msgHeadingValue.getText());
		} catch (Exception e) {
			return(e.getMessage());
		}
	}
	
	public boolean getMessageheading() {
			WebElement msgHeadingValue = wait.until(ExpectedConditions.elementToBeClickable(msgHeading));
			return (msgHeadingValue.isDisplayed());
	}
	
	public void clkLogout() {
		btnLogout.click();
	}
}
