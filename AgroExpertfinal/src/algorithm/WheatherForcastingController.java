package algorithm;

import java.io.BufferedReader;

import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

@WebServlet("/WheatherForcastingController")
public class WheatherForcastingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String urlString = "http://api.openweathermap.org/data/2.5/forecast?q=" + request.getParameter("cityname")
				+ "&appid=18caef06c2509206066247bef98a0918&units=metric";
		String pattern = "yyyy-MM-dd HH:mm:ss";
		List<List<String>> wheatherForcastList = new ArrayList<>();

		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		try {
			StringBuilder result = new StringBuilder();
			URL url = new URL(urlString);
			URLConnection connection = url.openConnection();
			BufferedReader rd = new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String line;
			while ((line = rd.readLine()) != null) {
				result.append(line);
			}
			rd.close();
			JSONObject weather = new JSONObject(result.toString());
			int prevDate = 0;
			for (int i = 0; i < weather.getJSONArray("list").length(); i++) {
				JSONObject dailyTempObjects = weather.getJSONArray("list").getJSONObject(i);
				Date date = simpleDateFormat.parse(dailyTempObjects.getString("dt_txt"));
				@SuppressWarnings("deprecation")
				int currDate = date.getDate();

				if (prevDate == currDate) {
			
					List<String> wheatherList = new ArrayList<>();

					wheatherList.add(dailyTempObjects.getString("dt_txt"));
					wheatherList.add(
							dailyTempObjects.getJSONArray("weather").getJSONObject(0).get("description").toString());
					wheatherList.add(dailyTempObjects.getJSONArray("weather").getJSONObject(0).get("icon").toString());
					wheatherList.add(dailyTempObjects.getJSONObject("main").get("temp").toString());
					wheatherList.add(dailyTempObjects.getJSONObject("main").get("temp_min").toString());
					wheatherList.add(dailyTempObjects.getJSONObject("main").get("temp_max").toString());
					wheatherList.add(dailyTempObjects.getJSONObject("main").get("humidity").toString());
					wheatherList.add(dailyTempObjects.getJSONObject("wind").get("speed").toString());
					wheatherList.add(dailyTempObjects.getJSONObject("wind").get("deg").toString());
					wheatherList.add(request.getParameter("cityname"));
					wheatherForcastList.add(wheatherList);

					System.out.println(dailyTempObjects.getString("dt_txt") + " -> " + " Cloudiness:"
							+ dailyTempObjects.getJSONArray("weather").getJSONObject(0).get("description").toString()
							+ " icon:"
							+ dailyTempObjects.getJSONArray("weather").getJSONObject(0).get("icon").toString()
							+ " Temp:" + dailyTempObjects.getJSONObject("main").get("temp").toString() + " Min Temp:"
							+ dailyTempObjects.getJSONObject("main").get("temp_min").toString() + " Max Temp:"
							+ dailyTempObjects.getJSONObject("main").get("temp_max").toString() + " Humidity:"
							+ dailyTempObjects.getJSONObject("main").get("humidity").toString() + " Wind:"
							+ dailyTempObjects.getJSONObject("wind").get("speed").toString() + " deg:"
							+ dailyTempObjects.getJSONObject("wind").get("deg").toString() + " Sea_level:"
							+ dailyTempObjects.getJSONObject("main").get("sea_level").toString());

					continue;
				} else
					prevDate = currDate;
			}

			System.out.println("\n" + wheatherForcastList);

			HttpSession session = request.getSession();
			session.setAttribute("wheatherForcastList", wheatherForcastList);
			response.sendRedirect("ViewCropPrediction.jsp");
			

		} catch (Exception e) {

			e.printStackTrace();

		}

		

	}

}
