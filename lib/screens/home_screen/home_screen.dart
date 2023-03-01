import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:meditation_screens/commom/widgets/SilentAndMoon2.dart';
import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/screens/home_screen/common_widgets/course_list_item.dart';
import 'package:meditation_screens/screens/home_screen/common_widgets/daily_widget.dart';
import 'package:meditation_screens/screens/home_screen/common_widgets/middle_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SizeConfig size = SizeConfig();

  List<Map<String, String>> map = [
    {
      'title': 'Focus',
      'asset': 'lib/assets/home/focusBackground.svg',
      'color': '0xFFAFDBC5'
    },
    {
      'title': 'Happiness',
      'asset': 'lib/assets/home/happinessBackground.svg',
      'color': '0xFFFEE3B4'
    },
    {
      'title': 'Happy Morning',
      'asset': 'lib/assets/home/happyMorningBackground.svg',
      'color': '0xFF3F414E'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              left: size.getProportionateScreenWidth(20),
              right: size.getProportionateScreenWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.getProportionateScreenHeight(50),
              ),
              const SilentAndMoon2(),
              SizedBox(
                height: size.getProportionateScreenHeight(40),
              ),
              const Text(
                'Good Morning, Afsar',
                style: TextStyle(
                  color: Color(0xFF3F414E),
                  fontFamily: 'HelveticaNeuebold',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.getProportionateScreenHeight(10),
              ),
              const Text(
                'We Wish you have a good day',
                style: TextStyle(
                  fontFamily: 'HelveticaNeuelight',
                  fontSize: 20,
                  color: Color(0xFFA1A4B2),
                ),
              ),
              SizedBox(
                height: size.getProportionateScreenHeight(30),
              ),
              MiddleGridView(size: size),
              SizedBox(
                height: size.getProportionateScreenHeight(20),
              ),
              DailyWidget(size: size),
              SizedBox(
                height: size.getProportionateScreenHeight(40),
              ),
              const Text(
                'Recomended for you',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'HelveticaNeuemedium',
                    color: Color(0xFF3F414E)),
              ),
              SizedBox(
                height: size.getProportionateScreenHeight(20),
              ),
              MediaQuery.removePadding(
                context: context,
                removeRight: true,
                child: Expanded(
                    child: ListView.builder(
                  itemCount: map.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CourseListView(
                      size: size,
                      imageLink: map[index]['asset']!,
                      backgroundColor: map[index]['color']!,
                      title: map[index]['title']!,
                    );
                  },
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
