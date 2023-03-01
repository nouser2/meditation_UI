import 'package:flutter/material.dart';

import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/sleep/sleep_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Meditation Screens',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeWidget());
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().setValues(context);
    return const SleepMain();
  }
}
