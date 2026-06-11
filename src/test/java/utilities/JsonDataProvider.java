package utilities;

import org.testng.annotations.DataProvider;
import org.json.JSONArray;
import org.json.JSONObject;

public class JsonDataProvider extends BaseUtility 
{
    @DataProvider(name = "loginJsonData")
    public Object[][] getLoginJsonData() throws Exception 
    {
        String jsonContent = readJsonFile("loginData.json");
        JSONObject obj = new JSONObject(jsonContent);
        JSONArray arr = obj.getJSONArray("loginData");
        Object[][] data = new Object[arr.length()][3];

        for(int i = 0; i < arr.length(); i++) {

            JSONObject user = arr.getJSONObject(i);
            data[i][0] = user.getString("loginId");
            data[i][1] = user.getString("password");
            data[i][2] = user.getString("res");
//            System.out.println(user);
        }
        return data;
    }
}