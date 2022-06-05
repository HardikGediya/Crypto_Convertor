
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr1_sky_scrapper_app/screens/btc_screens.dart';
import 'package:pr1_sky_scrapper_app/screens/cup_screen.dart';

import 'models/btc_models.dart';

void main() {
  runApp(
  const MyApp(),
  );
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  initState(){
    super.initState();

    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState((){});
    });

  }

  @override
  Widget build(BuildContext context) {
    return (isIOS) ? const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoBTCScreen(),
      theme: CupertinoThemeData(
        brightness: Brightness.light,
      ),
    )  : MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const CurrenciesConversion(),
      },
    );
  }
}
