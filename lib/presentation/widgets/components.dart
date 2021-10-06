// @dart=2.9

import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/my_colors.dart';

void navigateTo({@required context, @required widget}) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

Widget buildTextForm(
        {@required String label,
        @required TextEditingController controller,
        Widget icon,
        Function onSubmitted}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromRGBO(242, 242, 242, 1),
          borderRadius: BorderRadius.circular(28),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          autofocus: false,
          validator: (String value) {
            if (value.isEmpty)
              return '$label can not be empty';
            else
              return null;
          },
        ),
      ),
    );

Widget buildButton(
        {Color bgColor,
        Color textColor,
        Color borderColor,
        @required String title,
        Function x}) =>
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        width: 300,
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          shape: BoxShape.rectangle,
          color: bgColor,
          borderRadius: BorderRadius.all(Radius.circular(28)),
        ),
        child: MaterialButton(
          onPressed: x,
          elevation: 0,
          child: Text(
            '$title',
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );

Widget buildMiniButton(
        {@required Color bgColor,
        @required Color textColor,
        @required Color borderColor,
        @required String title,
        @required Function x}) =>
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        width: 157,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          shape: BoxShape.rectangle,
          color: bgColor,
          borderRadius: BorderRadius.all(Radius.circular(28)),
        ),
        child: MaterialButton(
          onPressed: x,
          elevation: 0,
          child: Text(
            '$title',
            style: TextStyle(
              color: textColor,
              fontSize: 11,
            ),
          ),
        ),
      ),
    );

Widget buildSocialButton(
        {Color bgColor,
        Color textColor,
        Color borderColor,
        @required String title,
        Function onPress,
        IconData socialIcon}) =>
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
          width: 300,
          height: 55,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            shape: BoxShape.rectangle,
            color: bgColor,
            borderRadius: BorderRadius.all(Radius.circular(28)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                socialIcon,
                color: Colors.white,
                size: 24,
              ),
              MaterialButton(
                onPressed: onPress,
                elevation: 0,
                child: Text(
                  '$title',
                  style: TextStyle(color: textColor),
                ),
              ),
            ],
          )),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => widget),
        (Route<dynamic> route) => false);

Widget buildMenuItem(
        {@required Function navigateFunction,
        @required String image,
        @required String title,
        @required String itemNumber}) =>
    Padding(
      padding: EdgeInsets.only(top: 25),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 310,
          height: 87,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30)),
          ),
          child: InkWell(
            onTap: navigateFunction,
            child: Stack(children: [
              Align(
                alignment: Alignment.center,
                child: Material(
                  elevation: 1,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  child: Container(
                    width: 270,
                    height: 87,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                    ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(image),
                    radius: 32,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: myGrey),
                      ),
                      Text(
                        '$itemNumber Item',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Material(
                    type: MaterialType.card,
                    borderRadius: BorderRadius.circular(50),
                    elevation: 1,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: myOrange,
                        size: 14,
                      ),
                      onPressed: navigateFunction,
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );

Widget buildMenuScreenItem(
        {String imagePath,
        String title,
        String rate,
        String makerName,
        String type}) =>
    InkWell(
      onTap: () {},
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
                        Text(type,
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

Widget buildOffersItem(
        {String imagePath,
        String title,
        String rate,
        String makerName,
        String type}) =>
    InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(top: 3, bottom: 3),
        child: Column(
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
                          color: myGrey),
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
                        Text(type,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
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

Widget buildMoreItem(
        {@required String title, IconData icon, Function onPressed}) =>
    Padding(
      padding: EdgeInsets.all(10),
      child: ListTile(
        dense: true,
        onTap: onPressed,
        contentPadding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        leading: Icon(
          icon,
          size: 30,
        ),
        title: Text(
          title,
          style: TextStyle(color: myGrey, fontSize: 14),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
          ),
        ),
      ),
    );

Widget buildNotificationsItem({String text, String time}) => Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 20),
          onTap: () {},
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
            time,
            style: TextStyle(fontSize: 12, color: Colors.grey),
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
