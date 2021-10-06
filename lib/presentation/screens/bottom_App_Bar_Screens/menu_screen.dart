import 'package:flutter/material.dart';
import 'package:meal_monkey/presentation/screens/menu_screens/beverage_screen.dart';
import 'package:meal_monkey/presentation/screens/menu_screens/dessert_Screen.dart';
import 'package:meal_monkey/presentation/screens/menu_screens/food_screen.dart';
import 'package:meal_monkey/presentation/screens/menu_screens/promotions_Screen.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Menu',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(
              height: 80,
            ),
            Stack(
              children: [
                Container(
                  height: 485,
                  width: 97,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(252, 96, 17, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                ),
                Column(
                  children: [
                    buildMenuItem(
                      navigateFunction: () =>
                          navigateTo(context: context, widget: FoodScreen()),
                      title: 'Food',
                      image: 'assets/images/f.jpg',
                      itemNumber: '4',
                    ),
                    buildMenuItem(
                      navigateFunction: () =>
                          navigateTo(context: context, widget: BeveragesScreen ()),
                      title: 'Beverages',
                      image: 'assets/images/Beverage.jpg',
                      itemNumber: '4',
                    ),
                    buildMenuItem(
                      navigateFunction: () =>
                          navigateTo(context: context, widget: DessertScreen()),
                      title: 'Desserts',
                      image: 'assets/images/dd.jpg',
                      itemNumber: '5',
                    ),
                    buildMenuItem(
                      navigateFunction: () =>
                          navigateTo(context: context, widget: PromotionsScreen()),
                      title: 'Promotions',
                      image: 'assets/images/f2.jpg',
                      itemNumber: '2',
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
