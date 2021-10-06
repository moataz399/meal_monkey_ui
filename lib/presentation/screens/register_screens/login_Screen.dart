// @dart=2.9

import 'package:flutter/material.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';
import 'package:meal_monkey/presentation/screens/register_screens/onBoarding_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey/presentation/screens/register_screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'Login',
              style:
                  TextStyle(fontSize: 30, color: Color.fromRGBO(74, 74, 77, 1)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Add your details to login',
              style: TextStyle(
                  fontSize: 14, color: Color.fromRGBO(124, 125, 126, 1)),
            ),
            SizedBox(
              height: 20,
            ),
            buildTextForm(
              controller: _emailController,
              label: 'Email',
            ),
            buildTextForm(controller: _passwordController, label: 'password'),
            const SizedBox(
              height: 10,
            ),
            buildButton(
              x: () => navigateTo(context: context, widget: OnBoardingScreen()),
              borderColor: Colors.transparent,
              bgColor: Color.fromRGBO(
                252,
                96,
                17,
                1,
              ),
              title: 'Login',
              textColor: Colors.white,
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot your Password?',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'or Login With',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            buildSocialButton(
              title: 'Login with facebook',
              textColor: Colors.white,
              bgColor: Color.fromRGBO(54, 127, 192, 1),
              borderColor: Color.fromRGBO(54, 127, 192, 1),
              socialIcon: FontAwesomeIcons.facebook,
              onPress: () {},
            ),
            SizedBox(
              height: 30,
            ),
            buildSocialButton(
              title: 'Login with Google',
              textColor: Colors.white,
              bgColor: Color.fromRGBO(221, 75, 57, 1),
              borderColor: Color.fromRGBO(221, 75, 57, 1),
              socialIcon: FontAwesomeIcons.googlePlus,
              onPress: () {},
            ),
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an Account? ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigateTo(context: context, widget: SignUPScreen());
                  },
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      color: Color.fromRGBO(
                        252,
                        96,
                        17,
                        1,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
