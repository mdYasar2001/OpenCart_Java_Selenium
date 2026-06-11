package utilities;

import java.nio.file.Files;
import java.nio.file.Paths;

public class BaseUtility {
	public static String readJsonFile(String fileName) throws Exception {
		return Files.readString(Paths.get(".\\testData\\" + fileName));
	}
}
