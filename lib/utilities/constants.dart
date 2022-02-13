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
