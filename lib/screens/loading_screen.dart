import 'package:clima_flutter/screens/location_screen.dart';
import 'package:clima_flutter/services/location.dart';
import 'package:clima_flutter/services/networking.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Location location = Location();
    Networking networking = Networking();
    await location.getCurrentLocation();
    var weatherData = await networking.getDataByLatLon(
      location.latitude,
      location.longitude,
    );
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LocationScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: null,
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
