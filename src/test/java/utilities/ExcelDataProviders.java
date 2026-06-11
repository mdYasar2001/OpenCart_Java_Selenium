package utilities;

import org.testng.annotations.DataProvider;

public class ExcelDataProviders extends BaseUtility 
{
	@DataProvider(name="LoginExcelData")
	public String[][] getLoginExcelData() throws Exception 
	{
		String excelContent = ".\\testData\\LoginData.xlsx";
		ExcelUtility xlUtil = new ExcelUtility(excelContent);
		
		int totalRows = xlUtil.getRowCount("Sheet1");
		int totalCols = xlUtil.getCellCount("Sheet1", 1);
		
		String loginData[][] = new String[totalRows][totalCols];
		
		for(int i=1; i<=totalRows; i++) {
			for(int j=0; j<totalCols; j++) {
				loginData[i-1][j] = xlUtil.getCellData("Sheet1", i, j);
			}
		}
		return loginData;
		
	}
}