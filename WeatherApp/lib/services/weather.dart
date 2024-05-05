import 'package:weather_today_completed/services/network.dart';

Future<dynamic> getCityWeather(String cityName) async {
  final String weatherUrl =
      "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=9878fc9532b6ba66228616ddc9e5e86a&units=metric";
  NetworkHelper networkHelper = NetworkHelper('$weatherUrl');

  var weatherData = await networkHelper.getData();
  return weatherData;
}
Future<dynamic> getCityWeatherByLocation(double latitude, double longitude) async {
  final String weatherUrl =
      "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=9878fc9532b6ba66228616ddc9e5e86a&units=metric";
  NetworkHelper networkHelper = NetworkHelper('$weatherUrl');

  var weatherData = await networkHelper.getData();
  return weatherData;
}