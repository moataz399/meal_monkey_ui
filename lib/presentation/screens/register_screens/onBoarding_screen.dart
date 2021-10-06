import 'package:flutter/material.dart';
import 'package:meal_monkey/presentation/screens/navigation_Screen.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String image;
  final String title;
  final String bodyText;

  BoardingModel(
      {@required this.image, @required this.title, @required this.bodyText});
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast = false;
  var boardingController = PageController();

  List<BoardingModel> boarding = [
    BoardingModel(
        image: 'assets/images/on1.png',
        title: 'Find Food You Love',
        bodyText:
            'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep'),
    BoardingModel(
        image: 'assets/images/on2.png',
        title: 'Fast Delivery',
        bodyText: 'Fast food delivery to your home, office wherever you are'),
    BoardingModel(
        image: 'assets/images/on3.png',
        title: 'Live Tracking',
        bodyText:
            'Real time tracking of your food on the app once you placed the order'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          actions: [
            TextButton(
              onPressed: () {
                navigateAndFinish(context, NavigationScreen());
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Color.fromRGBO(252, 96, 17, 1)),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardingController,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) => _buildItem(boarding[index]),
                itemCount: boarding.length,
                onPageChanged: (index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
              ),
            ),
            Row(
              children: [],
            )
          ],
        ));
  }

  Widget _buildItem(BoardingModel model) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Image(
              image: AssetImage(model.image),
              // fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SmoothPageIndicator(
            controller: boardingController,
            count: boarding.length,
            effect: ExpandingDotsEffect(
              dotColor: Colors.grey,
              activeDotColor: Color.fromRGBO(252, 96, 17, 1),
              dotWidth: 8,
              spacing: 5.0,
              dotHeight: 8,
              expansionFactor: 2,
              radius: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            model.title,
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(75, 75, 76, 1)),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 250,
            height: 50,
            child: Text(
              model.bodyText,
              softWrap: true,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(124, 125, 126, 1)),
              maxLines: 2,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          buildButton(
              x: () {
                if (isLast) {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (_) => NavigationScreen()));
                } else {
                  boardingController.nextPage(
                      duration: Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn);
                }
              },
              title: "Next",
              textColor: Colors.white,
              borderColor: Color.fromRGBO(252, 96, 17, 1),
              bgColor: Color.fromRGBO(252, 96, 17, 1))
        ],
      );
}
