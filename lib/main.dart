import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(7, 94, 84, 1),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Color.fromRGBO(18, 140, 126, 1),
          cardColor: Color.fromRGBO(37, 211, 102, 1),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color.fromRGBO(37, 211, 102, 1),
        ),
        textTheme: TextTheme(
          /* ListTile Title style */
          bodyText1: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
          /* ListTile subTitle style */
          bodyText2: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
