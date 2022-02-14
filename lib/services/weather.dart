import 'location.dart';
import 'networking.dart';

class WeatherModel {
  Networking networking = Networking();

  Future<dynamic> getCityWeather(String cityName) async {
    dynamic cityData = await networking.getDataByCityName(cityName);
    return cityData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();

    await location.getCurrentLocation();
    var weatherData = await networking.getDataByLatLon(
      location.latitude,
      location.longitude,
    );

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
