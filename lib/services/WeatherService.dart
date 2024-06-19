/*import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey;

  WeatherService(this.apiKey);

  Future<Map<String, dynamic>> getWeatherData(String city) async {
    final response = await http.get(
       'https://home.openweathermap.org/api_keys' as Uri  );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}*/