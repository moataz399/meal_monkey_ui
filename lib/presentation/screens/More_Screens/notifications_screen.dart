import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/my_colors.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Notifications',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color.fromRGBO(74, 75, 76, 1)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Color.fromRGBO(74, 75, 76, 1),
              ))
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          buildNotificationsItem(
              text: 'Your orders has been picked up', time: 'Now'),
          buildNotificationsItem(
              text: 'Your order has been delivered', time: '1 h ago'),
          buildNotificationsItem(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              time: 'Now'),
          buildNotificationsItem(
              text: 'Your orders has been picked up', time: '3 h ago'),
          buildNotificationsItem(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              time: 'Now'),
          buildNotificationsItem(
              text: 'Lorem ipsum dolor sit amet, consectetur ',
              time: '5h ago '),
          buildNotificationsItem(
              text: 'Please wait the order', time: '05 Sep 2020'),
          buildNotificationsItem(
              text: 'Your orders has been picked up', time: '12 Aug 2020'),
          buildNotificationsItem(
              text: 'Your orders has been picked up', time: '20 Jul 2020'),
          buildNotificationsItem(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              time: '12 Jul 2020'),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
