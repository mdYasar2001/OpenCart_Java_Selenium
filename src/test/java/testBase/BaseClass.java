package testBase;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.util.Date;
import java.util.Properties;

import org.apache.commons.lang3.RandomStringUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.Platform;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.*;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class BaseClass {
	
	public static WebDriver driver;
	public static WebDriverWait wait;
	public Logger logger;
	public Properties p;
	
//	@BeforeClass
//	public void setup() {
//		driver = new ChromeDriver();
//		wait = new WebDriverWait(driver, Duration.ofSeconds(10));
//		driver.manage().deleteAllCookies();
//		driver.manage().window().maximize();
//		driver.get("https://tutorialsninja.com/demo/");
//	}
	
	@BeforeClass(groups= {"Sanity", "Regression", "Master"})
	@Parameters({"os", "browser"})
	public void setup(
	        @Optional("Windows") String os,
	        @Optional("chrome") String br) throws IOException {
//		Loading config.properties file
		FileReader file =new FileReader("./src//test//resources//config.properties");
		p = new Properties();
		p.load(file);
		
		logger = LogManager.getLogger(this.getClass());
//		logger.info("****Testing in +br+****");
		
		if(p.getProperty("exe_Env").equalsIgnoreCase("remote"))
		{
			DesiredCapabilities cap = new DesiredCapabilities();
			if(os.equalsIgnoreCase("windows")) {
				cap.setPlatform(Platform.WIN11);
			} else if(os.equalsIgnoreCase("linux")) {
				cap.setPlatform(Platform.LINUX);
			} else if(os.equalsIgnoreCase("mac")) {
				cap.setPlatform(Platform.MAC);
			} else {
				System.out.println("No OS is matched");
				return;
			}
			
			switch(br.toLowerCase()) 
			{
				case "chrome" : cap.setBrowserName("chrome"); break;
				case "edge" : cap.setBrowserName("MicrosofEdge"); break;
				case "firefox" : cap.setBrowserName("firefox"); break;
				default : System.out.println("No matching browser"); return;
			}
			String gridURL = "http://localhost:4444/wd/hub";
			driver = new RemoteWebDriver(URI.create(gridURL).toURL(), cap);
		}
		if(p.getProperty("exe_Env").equalsIgnoreCase("local"))
		{	
			switch(br.toLowerCase()) 
			{
				case "chrome" : driver = new ChromeDriver(); break;
				case "edge" : driver = new EdgeDriver(); break;
				case "firefox" : driver = new FirefoxDriver(); break;
				default : System.out.println("Invalid browser"); return;
			}
		}
		
		driver.manage().deleteAllCookies();
		driver.manage().window().maximize();
		wait = new WebDriverWait(driver, Duration.ofSeconds(10));
		driver.get(p.getProperty("appURL1"));
	}
	
	@AfterClass(groups= {"Sanity", "Regression", "Master"})
	public void tearDown() {
		driver.quit();
	}
	
	public String randomnString() {
		String generatedString = RandomStringUtils.secure().nextAlphabetic(5);
		return generatedString;
	}
	
	public String captureScreen(String tName) {
		
		String timeStamp = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		TakesScreenshot ts = (TakesScreenshot) driver;
		File source = ts.getScreenshotAs(OutputType.FILE);
		
		String targetFilePath = System.getProperty("user.dir")+"\\screenshots\\"+tName+"_"+timeStamp+".png";
		File targetFile = new File(targetFilePath);
		source.renameTo(targetFile);
		
		return targetFilePath;
		
	}

}
