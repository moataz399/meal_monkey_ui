import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/my_colors.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';

class PromotionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchPromotions= TextEditingController();

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Promotions',
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
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [

              buildMenuScreenItem(
                type: '',
                  imagePath: 'assets/images/s1.jpg',
                  title: 'SALE on Dessert',
                  makerName: '',
                  rate: ''),
              SizedBox(height: 20,),
              buildMenuScreenItem(
                  imagePath: 'assets/images/s2.jpg',
                  title: 'Waiting',
                  makerName: '',
                  rate: '',
              type: ''),

              const SizedBox(height: 3,),
            ],
          ),
        ));
  }


}
