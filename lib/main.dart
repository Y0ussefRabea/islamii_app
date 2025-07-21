import 'package:flutter/material.dart';
import 'package:islami/UI/home/home_screen.dart';
import 'package:islami/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//todo: const=> doesn't change as soon as you define it,you must set a value to it when defining (full immutable)
  //todo: final=> doesn't change as soon as you define it , you can define it then give it a value (half immutable)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        //    OnBoardingPage.routeName:(context)=>OnBoardingPage(),
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
