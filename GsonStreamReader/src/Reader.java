import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.stream.JsonReader;

public class Reader {
	static Gson gsonMain = new Gson();
	public static void main(String[] args) {
		try {
			InputStream in = new FileInputStream(new File("C:\\Users\\talusan\\Desktop\\usbong\\kdict_dump.json"));
//			InputStream in = new FileInputStream(new File("C:\\Users\\talusan\\Desktop\\usbong\\test.json"));
			List<Dictionary> output = readJsonStream(in);
			for(Dictionary d : output) {
//				System.out.println(d);
			}

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	public static List<Dictionary> readJsonStream(InputStream in) throws IOException {
		Gson gson = new Gson();
		JsonReader reader = new JsonReader(new InputStreamReader(in, "UTF-8"));
		reader.setLenient(true);
		List<Dictionary> messages = new ArrayList<Dictionary>();
		reader.beginArray();
		int counter = 0;
		while (reader.hasNext()) {
			Dictionary message = gson.fromJson(reader, Dictionary.class);
			String json = gsonMain.toJson(message);
			System.out.println(counter);
//			excutePost("url", json);
			System.out.println(excutePost("url", json));
			++counter;
//			System.out.println(json);
			messages.add(message);
		}
		reader.endArray();
		reader.close();
		return messages;
		}
	
	public static String excutePost(String targetURL, String jsonString)
	  {
	    URL url;
	    HttpURLConnection connection = null;  
	    try {
	      //Create connection
//	      url = new URL("http://localhost/usbong/koreandictupload.php");
//	      url = new URL("http://shrimptalusan.hostei.com/usbong/koreandictupload.php");
	      url = new URL("http://singkamasdev.netai.net/korean/koreandictupload.php");
	      connection = (HttpURLConnection) url.openConnection();
			connection.setReadTimeout(20000);
			connection.setConnectTimeout(25000);
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
			connection.setRequestProperty("Accept", "application/json");
			connection.setDoInput(true);
			connection.setDoOutput(true);

	      //Send request			
			byte[] postData = jsonString.getBytes();
			
			OutputStream out = connection.getOutputStream();

		    out.write(postData);
		    out.close();

	      //Get Response	
	      InputStream is = connection.getInputStream();
	      BufferedReader rd = new BufferedReader(new InputStreamReader(is));
	      String line;
	      StringBuffer response = new StringBuffer(); 
	      while((line = rd.readLine()) != null) {
	        response.append(line);
	        response.append('\r');
	      }
	      rd.close();
	      return response.toString();

	    } catch (Exception e) {

	      e.printStackTrace();
	      return null;

	    } finally {

	      if(connection != null) {
	        connection.disconnect(); 
	      }
	    }
	  }
}