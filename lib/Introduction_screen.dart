// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:islami/home_screen.dart';
//
// class OnBoardingPage extends StatelessWidget {
//   static const String routeName='onboardingScreen';
//   const OnBoardingPage({super.key});
//
//   void _onIntroEnd(context) {
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(builder: (_) => const HomeScreen()),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return IntroductionScreen(
//       pages: [
//         PageViewModel(
//           title: "Welcome",
//           body: "This is the first page of the introduction.",
//           image: Center(child: Image.asset("assets/images/welcome.png", height: 175.0)),
//         ),
//         PageViewModel(
//           title: "Learn",
//           body: "Learn how to use our app easily.",
//           image: Center(child: Image.asset("assets/images/mosque.png", height: 175.0)),
//         ),
//         PageViewModel(
//           title: "Get Started",
//           body: "Let's get started!",
//           image: Center(child: Image.asset("assets/images/quraan.png", height: 175.0)),
//         ),
//       ],
//       onDone: () => _onIntroEnd(context),
//       showSkipButton: true,
//       skip: const Text("Skip"),
//       next: const Icon(Icons.arrow_forward),
//       done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
//       dotsDecorator: const DotsDecorator(
//         size: Size(10.0, 10.0),
//         color: Colors.black26,
//         activeSize: Size(22.0, 10.0),
//         activeColor: Colors.deepPurple,
//         activeShape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(25.0)),
//         ),
//       ),
//     );
//   }
// }
