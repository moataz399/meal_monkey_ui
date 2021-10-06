// @dart=2.9

import 'package:flutter/material.dart';
import 'package:meal_monkey/presentation/screens/More_Screens/about_us_screen.dart';
import 'package:meal_monkey/presentation/screens/More_Screens/inbox_Screen.dart';
import 'package:meal_monkey/presentation/screens/More_Screens/notifications_screen.dart';
import 'package:meal_monkey/presentation/screens/bottom_App_Bar_Screens/offers_screen.dart';
import 'package:meal_monkey/presentation/screens/bottom_App_Bar_Screens/profile_screen.dart';
import 'package:meal_monkey/presentation/screens/menu_screens/beverage_screen.dart';
import 'package:meal_monkey/presentation/screens/menu_screens/dessert_Screen.dart';
import 'package:meal_monkey/presentation/screens/home_screen.dart';
import 'package:meal_monkey/presentation/screens/menu_screens/food_screen.dart';
import 'package:meal_monkey/presentation/screens/navigation_Screen.dart';
import 'package:meal_monkey/presentation/screens/register_screens/login_Screen.dart';
import 'package:meal_monkey/presentation/screens/bottom_App_Bar_Screens/menu_screen.dart';
import 'package:meal_monkey/presentation/screens/register_screens/onBoarding_screen.dart';
import 'package:meal_monkey/presentation/screens/register_screens/register_Screen.dart';
import 'package:meal_monkey/presentation/screens/register_screens/signup_screen.dart';
import 'package:meal_monkey/presentation/screens/register_screens/splash_screen.dart';

import 'constant/Strings.dart';

class AppRouter {
  AppRouter() {
    String initialRoute;
  }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainSplashScreen:
        return MaterialPageRoute(builder: (_) => MainSplashScreen());
      case registerScreen:
        return MaterialPageRoute(builder: (_) => RegisterScreen());

      case loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case signUpScreen:
        return MaterialPageRoute(builder: (_) => SignUPScreen());

      case onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case menuScreen:
        return MaterialPageRoute(builder: (_) => MenuScreen());
      case navigationScreen:
        return MaterialPageRoute(builder: (_) => NavigationScreen());
      case dessertScreen:
        return MaterialPageRoute(builder: (_) => DessertScreen());
      case foodScreen:
        return MaterialPageRoute(builder: (_) => FoodScreen());
      case beveragesScreen:
        return MaterialPageRoute(builder: (_) => BeveragesScreen());
      case offersScreen:
        return MaterialPageRoute(builder: (_) => OffersScreen());
      case notificationsScreen:
        return MaterialPageRoute(builder: (_) => NotificationsScreen());
      case aboutUsScreen:
        return MaterialPageRoute(builder: (_) => AboutUsScreen());
      case inboxScreen:
        return MaterialPageRoute(builder: (_) => InboxScreen());
    }
  }
}
