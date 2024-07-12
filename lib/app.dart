import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';
import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Meditation App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Cairo',
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme:
                Theme.of(context).textTheme.apply(displayColor: kTextColor)),
        home: const HomeScreen());
  }
}
