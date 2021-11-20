import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'example_one.dart';

void main() {



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent
        )
    );

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(

      // statusBarColor is used to set Status bar color in Android devices.
        statusBarColor: Colors.transparent,

        // To make Status bar icons color white in Android devices.
        statusBarIconBrightness: Brightness.light,

        // statusBarBrightness is used to set Status bar icon color in iOS.
        statusBarBrightness: Brightness.light
      // Here light means dark color Status bar icons.

    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const ExampleOne(),
      //initialRoute: 'home',
      //routes: ,
    );
  }
}
