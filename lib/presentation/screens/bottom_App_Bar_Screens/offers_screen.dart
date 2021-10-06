import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/my_colors.dart';
import 'package:meal_monkey/presentation/screens/menu_screens/promotions_Screen.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Latest Offers',
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
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Container(
                  height: 30,
                  width: 250,
                  child: const Text(
                    'Find discounts, Offers special meals and more!',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
            ),
            buildMiniButton(
              title: "Check Offers",
              bgColor: myOrange,
              textColor: Colors.white,
              borderColor: myOrange,
              x: () => navigateTo(
                context: context,
                widget: PromotionsScreen(),
              ),
            ),
            const SizedBox(height: 10,),
            buildOffersItem(
                title: 'New Offer',
                type: ' New Offer',
                imagePath: 'assets/images/f1.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: ' New Offer',
                imagePath: 'assets/images/f2.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: ' New Offer',
                imagePath: 'assets/images/f3.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: ' New Offer',
                imagePath: 'assets/images/f4.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Beverages',
                imagePath: 'assets/images/B.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Beverages',
                imagePath: 'assets/images/b1.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Beverages',
                imagePath: 'assets/images/b2.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Beverages',
                imagePath: 'assets/images/b3.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Beverages',
                imagePath: 'assets/images/b4.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Dessert',
                imagePath: 'assets/images/d1.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Dessert',
                imagePath: 'assets/images/d2.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Dessert',
                imagePath: 'assets/images/d3.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Dessert',
                imagePath: 'assets/images/dd.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Dessert',
                imagePath: 'assets/images/d6.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            buildOffersItem(
                title: 'New Offer',
                type: 'Dessert',
                imagePath: 'assets/images/d5.jpg',
                makerName: 'Cafe',
                rate: '4.9'),
            const SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
