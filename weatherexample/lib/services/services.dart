import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weatherexample/model/weather.dart';

class WeatherService {
  static const String _apiKey = "9c9940e9e1bf4e4ca6013952243112";
  static const String _baseurl = "https://api.weatherapi.com/v1/current.json";

  Future<Weather> getWeather(String city) async {
    final url = "$_baseurl?key=$_apiKey&q=$city&aqi=yes";
    final response = await http.get(Uri.parse(url));
    print(response.statusCode);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data);
      return Weather.fromJson(data);
    } else {
      print('Error: ${response.statusCode} ${response.reasonPhrase}');
      throw Exception("Failed to load weather");
    }
  }
}
