import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/my_colors.dart';
import 'package:meal_monkey/presentation/screens/bottom_App_Bar_Screens/menu_screen.dart';
import 'package:meal_monkey/presentation/screens/bottom_App_Bar_Screens/more_screen.dart';
import 'package:meal_monkey/presentation/screens/bottom_App_Bar_Screens/offers_screen.dart';
import 'package:meal_monkey/presentation/screens/bottom_App_Bar_Screens/profile_screen.dart';
import 'package:meal_monkey/presentation/widgets/tab_bar_material_widget.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  bool isSelected = false;
  int index = 0;
  final pages = <Widget>[
    MenuScreen(),
    OffersScreen(),
    ProfileScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[index],
      bottomNavigationBar: TabBarMaterialWidget(
        index: index,
        onChangedTab: onChangedTap,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        autofocus: false,
        isExtended: true,
        child: Icon(
          Icons.home,
        ),
        onPressed: () {

        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void onChangedTap(int index) {
    setState(() {
      this.index = index;
    });
  }
}
