import 'package:flutter/material.dart';
import 'package:islami/Introduction_screen.dart';
import 'package:islami/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        //    OnBoardingPage.routeName:(context)=>OnBoardingPage(),
      },
    );
  }
}
