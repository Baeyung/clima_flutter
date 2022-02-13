import 'package:clima_flutter/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking {
  Future getDataByLatLon(double lat, double lon) async {
    http.Response response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$kApiKey&units=metric'));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print('failed to obtain the data');
    }
  }
}
