import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/Strings.dart';
import 'package:meal_monkey/constant/my_colors.dart';
import 'package:meal_monkey/presentation/screens/More_Screens/about_us_screen.dart';
import 'package:meal_monkey/presentation/screens/More_Screens/inbox_Screen.dart';
import 'package:meal_monkey/presentation/screens/More_Screens/notifications_screen.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'More',
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
      body: Column(
        children: [
          buildMoreItem(title: 'Payment Details', icon: Icons.payment),
          buildMoreItem(title: 'My Orders', icon: Icons.shopping_bag),
          buildMoreItem(
            title: 'Notifications',
            icon: Icons.notifications,
            onPressed: () => navigateTo(
              context: context,
              widget: NotificationsScreen(),
            ),
          ),
          buildMoreItem(
              title: 'Inbox',
              icon: Icons.forward_to_inbox_outlined,
              onPressed: () =>
                  navigateTo(context: context, widget: InboxScreen())),
          buildMoreItem(
            title: 'About US',
            icon: Icons.info,
            onPressed: () => navigateTo(
              context: context,
              widget: AboutUsScreen(),
            ),
          ),
        ],
      ),
    );
  }
}
