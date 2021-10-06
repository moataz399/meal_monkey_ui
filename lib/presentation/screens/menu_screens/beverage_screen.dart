import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/my_colors.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';

class BeveragesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _searchBeverages = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Beverages',
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
              buildTextForm(label: 'Search Food', controller: _searchBeverages),
              const SizedBox(
                height: 30,
              ),
              _buildDessertItem(
                  imagePath: 'assets/images/b1.jpg',
                  title: 'Coffee',
                  makerName: 'Bonk',
                  rate: '4.9'),
              _buildDessertItem(
                  imagePath: 'assets/images/b4.jpg',
                  title: 'cappuccino',
                  makerName: 'Salla',
                  rate: '4.7'),
              _buildDessertItem(
                  imagePath: 'assets/images/b2.jpg',
                  title: 'Cocoa',
                  makerName: 'Cocacola',
                  rate: '4.2'),
              _buildDessertItem(
                  imagePath: 'assets/images/b3.jpg',
                  title: 'Strawberry Juice ',
                  makerName: 'Salsa',
                  rate: '4.2'),
              const SizedBox(height: 3,),
            ],
          ),
        ));
  }

  Widget _buildDessertItem(
      {String imagePath, String title, String rate, String makerName}) =>
      InkWell(
        onTap: (){},
        child: Padding(
          padding: EdgeInsets.only(top: 3, bottom: 3),
          child: Stack(
            children: [
              Container(
                height: 193,
                width: 375,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 14,
                            color: myOrange,
                          ),
                          Text(
                            rate,
                            style: TextStyle(fontSize: 11, color: myOrange),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            makerName,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('Beverages',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              )),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
