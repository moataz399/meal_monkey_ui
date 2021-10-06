// @dart=2.9

import 'package:flutter/material.dart';
import 'package:meal_monkey/presentation/screens/register_screens/register_Screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';


class MainSplashScreen extends StatefulWidget {
  @override
  _MainSplashScreenState createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<MainSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(
          seconds: 3,
          imageBackground: AssetImage('assets/images/bg.png'),
          image: Image.asset('assets/images/logo.png'),
         loadingText: Text('Meal Monkey ',style:GoogleFonts.cabin(fontSize: 34,color: Color.fromRGBO(252, 96, 17,1,),fontWeight: FontWeight.bold,) ),
          photoSize: 80,
          useLoader: true,
          loaderColor: Color.fromRGBO(
            252,
            96,
            17,
            1,
          ),
          navigateAfterSeconds: RegisterScreen(),
        ),
      ),
    );
  }
}
// RichText(
// text: TextSpan(
// children: <TextSpan>
// [
// TextSpan(text: 'Meal'),
// TextSpan(text: 'Monkey'),
// ],
// ),
// ),
