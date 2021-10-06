// @dart=2.9

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';
import 'package:meal_monkey/presentation/screens/register_screens/login_Screen.dart';
import 'package:meal_monkey/presentation/screens/register_screens/signup_screen.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                height: 430,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/shape.png'),
                )),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.png'),
                radius: 60,
                backgroundColor: Colors.transparent,
              )
            ],
          ),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Meal',
                    style: GoogleFonts.cabin(
                      fontSize: 34,
                      color: Color.fromRGBO(
                        252,
                        96,
                        17,
                        1,
                      ),
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'Monkey',
                    style: GoogleFonts.cabin(
                      fontSize: 34,
                      color: Color.fromRGBO(
                        74,
                        57,
                        77,
                        1,
                      ),
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Food Delivery',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            height: 50,
            child: Text(
              '   Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              maxLines: 2,
              softWrap: true,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          buildButton(
            borderColor: Colors.transparent,
            title: 'Login',
            textColor: Colors.white,
            bgColor: Color.fromRGBO(252, 96, 17, 1),
            x: () => navigateTo(context: context, widget: LoginScreen()),
          ),
          const SizedBox(
            height: 20,
          ),
          buildButton(
              x: () => navigateTo(context: context, widget: SignUPScreen()),
              title: 'Create an Account',
              bgColor: Colors.transparent,
              textColor: Color.fromRGBO(
                252,
                96,
                17,
                1,
              ),
              borderColor: Color.fromRGBO(252, 96, 17, 1)),
        ],
      ),
    );
  }
}
