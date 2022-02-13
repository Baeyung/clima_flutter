import 'package:clima_flutter/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:clima_flutter/utilities/constants.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key, required this.weatherData}) : super(key: key);
  final dynamic weatherData;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late int temprature;
  late String weatherMessage;
  late String weatherIcon;
  late String cityName;
  WeatherModel weatherModel = WeatherModel();

  void updateContentsUi(dynamic weatherData) {
    setState(() {
      double temp = weatherData['main']['temp'];
      temprature = temp.toInt();
      weatherMessage = weatherModel.getMessage(temprature);
      weatherIcon =
          weatherModel.getWeatherIcon(weatherData['weather'][0]['id']);
      cityName = weatherData['name'];
    });
  }

  @override
  void initState() {
    super.initState();
    updateContentsUi(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    style: ktransparentStyle,
                    onPressed: () async {
                      dynamic weatherData =
                          await weatherModel.getLocationWeather();
                      updateContentsUi(weatherData);
                    },
                    child: const Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  ElevatedButton(
                    style: ktransparentStyle,
                    onPressed: () {},
                    child: const Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temprature°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon,
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  '$weatherMessage in $cityName!',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
