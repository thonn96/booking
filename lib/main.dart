import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/home.dart';
import 'package:hotel_booking/screens/setting.dart';
import 'screens/root_app.dart';
import 'theme/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: RootApp(),
    );
  }
}
