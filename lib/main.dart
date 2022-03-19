import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'utils/colors.dart';

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
        primaryColor: AppColors.tealGreen,
        colorScheme: ColorScheme.fromSwatch(
          accentColor: AppColors.lightGreen,
          cardColor: AppColors.lightGreen,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.tealGreen,
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
