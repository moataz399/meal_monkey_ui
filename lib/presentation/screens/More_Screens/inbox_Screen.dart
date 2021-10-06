import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/my_colors.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';

class InboxScreen extends StatefulWidget {

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {

  bool isPressed = false;
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
          'Inbox',
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
        children: [
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
          buildInboxItem(
            text: 'MealMonkey Promotions',
            time: '6th july',
            subText: 'Lorem ipsum dolor sit amet, consectetur adipiscing el',
          ),
        ],
      ),
    );
  }


  Widget buildInboxItem({String text, String subText, String time}) => Column(
    children: [
      ListTile(
        contentPadding: EdgeInsets.only(left: 20),
        onTap: () {
          isPressed = true;
        },
        trailing: Column(
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 9, color: Colors.grey),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isPressed=!isPressed;
                  });
                },
                icon: Icon(
                  isPressed ? Icons.star : Icons.star_border,
                  color: myOrange,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
        leading: Container(
          decoration: BoxDecoration(
            color: myOrange,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
        title: Text(
          text,
          style: TextStyle(fontSize: 14, color: myGrey),
        ),
        subtitle: Text(
          subText,
          style: TextStyle(fontSize: 12, color: Colors.grey),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      Divider(
        thickness: 1,
        color: Colors.grey[300],
        indent: 1,
        endIndent: 1,
        height: 0,
      ),
    ],
  );
}
