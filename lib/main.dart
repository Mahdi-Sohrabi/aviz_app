import 'package:aviz_app/screens/dashbord_screen.dart';
import 'package:aviz_app/screens/home_Screen.dart';
import 'package:aviz_app/screens/login/login_number2_screen.dart';
import 'package:aviz_app/screens/login/login_number_screen.dart';
import 'package:aviz_app/screens/profile_screen.dart';
import 'package:aviz_app/screens/show_aviz_screen.dart';
import 'package:aviz_app/screens/create_aviz_screen.dart';
import 'package:aviz_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
