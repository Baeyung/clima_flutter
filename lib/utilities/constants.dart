import 'package:flutter/material.dart';

const String kApiKey = '7e4f44ccb10494a9e2a276e7a048c367';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);
ButtonStyle ktransparentStyle = ElevatedButton.styleFrom(
  elevation: 0.0,
  primary: Colors.red.withOpacity(0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(2),
    ),
  ),
);

const String kError = 'error';

const String kErrorMessage = 'Unable to fetch the location';

const String kEmptyString = '';

const InputDecoration kLocationNameInput = InputDecoration(
  fillColor: Colors.white,
  // hintText: 'Location name',
  filled: false,
  labelText: 'Location Name',
  labelStyle: TextStyle(
    color: Colors.blue,
    fontSize: 30,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
    borderSide: BorderSide(color: Colors.black),
  ),
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  // hintStyle: TextStyle(
  //   color: Colors.grey,
  // ),
);

const TextStyle kInputTextStyle = TextStyle(
  color: Colors.white,
);
