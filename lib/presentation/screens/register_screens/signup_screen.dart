// @dart=2.9

import 'package:flutter/material.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';
import 'package:meal_monkey/presentation/screens/register_screens/onBoarding_screen.dart';

import 'login_Screen.dart';

class SignUPScreen extends StatefulWidget {
  @override
  _SignUPScreenState createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _addressController.dispose();
    _confirmPasswordController.dispose();
    _mobileNumberController.dispose();
  }
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'Sign UP',
              style:
                  TextStyle(fontSize: 30, color: Color.fromRGBO(74, 74, 77, 1)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Add your details to Sign UP',
              style: TextStyle(
                  fontSize: 14, color: Color.fromRGBO(124, 125, 126, 1)),
            ),
            SizedBox(
              height: 20,
            ),
            buildTextForm(
              controller: _nameController,
              label: 'Name',
            ),
            buildTextForm(
              controller: _emailController,
              label: 'Email',
            ),
            buildTextForm(
              controller: _mobileNumberController,
              label: 'Mobile No',
            ),
            buildTextForm(
              controller: _addressController,
              label: 'Address',
            ),
            buildTextForm(
              controller: _passwordController,
              label: 'Password',
            ),
            buildTextForm(
              controller: _confirmPasswordController,
              label: 'Confirm Password',
            ),
            SizedBox(
              height: 15,
            ),
            buildButton(
              title: 'Sign Up',
              borderColor: Color.fromRGBO(252, 96, 17, 1),
              bgColor: Color.fromRGBO(252, 96, 17, 1),
              textColor: Colors.white,
              x: () => navigateTo(context: context, widget: OnBoardingScreen()),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an Account? ',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigateTo(context: context, widget: LoginScreen());
                  },
                  child: Text(
                    'Login',
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
    );
  }
}
