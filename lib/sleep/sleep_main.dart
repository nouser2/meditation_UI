// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:meditation_screens/constants/size_config.dart';

class SleepMain extends StatefulWidget {
  const SleepMain({Key? key}) : super(key: key);

  @override
  State<SleepMain> createState() => _SleepMainState();
}

class _SleepMainState extends State<SleepMain> {
  SizeConfig size = SizeConfig();
  late int currentSelected;

  List<String> imageLink = [];
  List<String> title = [
    'Night Island',
    'Sweet Sleep',
    'Good Night',
    'Moon Clouds',
    'Sweet Sleep'
  ];
  List<String> subtitle = [
    '45 MIN . SLEEP MUSIC',
    '45 MIN . SLEEP MUSIC',
    '45 MIN . SLEEP MUSIC',
    '45 MIN . SLEEP MUSIC',
    '45 MIN . SLEEP MUSIC',
  ];

  List<String> assets = [
    'lib/assets/sleep/sleep2/icon_1.svg',
    'lib/assets/sleep/sleep2/icon_2.svg',
    'lib/assets/sleep/sleep2/icon_3.svg',
    'lib/assets/sleep/sleep2/icon_4.svg',
    'lib/assets/sleep/sleep2/icon_5.svg',
  ];
  List<String> name = [
    'All',
    'My',
    'Anxious',
    'Sleep',
    'Kids',
  ];

  @override
  void initState() {
    currentSelected = 0;
    super.initState();
  }

  void setSelectedIcon(index) {
    setState(() {
      currentSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: size.getProportionateScreenHeight(896),
              width: size.getProportionateScreenWidth(414),
              child: SvgPicture.asset(
                'lib/assets/sleep/sleep2/sleep_main_background.svg',
                fit: BoxFit.fill,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.getProportionateScreenHeight(86),
                ),
                Text(
                  'Sleep Stories',
                  style: TextStyle(
                    fontFamily: 'HelveticaNeuebold',
                    fontSize: 28,
                    color: Color(0xFFE6E7F2),
                  ),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(15),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [TextSpan(text: 'into a deep and natural sleep')],
                    text: 'Soothing bedtime stories to help you fall \n',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'HelveticaNeuelight',
                      color: Color(0xFFEBEAEC),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(34),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(105),
                  width: double.maxFinite,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: ((context, index) {
                      bool selected;
                      selected = index == currentSelected;
                      if (index == 5) {
                        return SizedBox(
                          width: 30,
                        );
                      }
                      return IconListItem(
                        title: name[index],
                        size: size,
                        isSelected: selected,
                        callback: () {
                          setSelectedIcon(index);
                        },
                        icon: assets[index],
                      );
                    }),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(30),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(233),
                  width: size.getProportionateScreenWidth(373.6),
                  child: Stack(
                    children: [
                      Container(
                        height: size.getProportionateScreenHeight(233),
                        width: size.getProportionateScreenWidth(373.6),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        width: size.getProportionateScreenWidth(370),
                        child: SvgPicture.asset(
                          'lib/assets/signUp_and_signIn/logo.svg',
                          height: size.getProportionateScreenHeight(233),
                          width: size.getProportionateScreenWidth(373.6),
                        ),
                      ),
                      SizedBox(
                        width: size.getProportionateScreenWidth(373.6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.getProportionateScreenHeight(68.3),
                            ),
                            Text(
                              'The ocean moon',
                              style: TextStyle(
                                fontFamily: 'Garamond_premier_pro',
                                fontSize: 36,
                                color: Color(0xFFFFE7BF),
                              ),
                            ),
                            SizedBox(
                              height: size.getProportionateScreenHeight(5),
                            ),
                            Text(
                              'Non-stop 8- hour mixes of our \n most popular sleep audio',
                              style: TextStyle(
                                fontFamily: 'HelveticaNeuelight',
                                fontSize: 16,
                                color: Color(0xFFF9F9FF),
                              ),
                            ),
                            SizedBox(
                              height: size.getProportionateScreenHeight(19),
                            ),
                            GestureDetector(
                              child: Container(
                                width: size.getProportionateScreenWidth(72),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      size.getProportionateScreenWidth(15),
                                  vertical:
                                      size.getProportionateScreenHeight(10),
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFEBEAEC),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text(
                                    "START",
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNeuemedium',
                                        fontSize: 12,
                                        color: Color(0xFF3F414E)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(20),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(
                      left: size.getProportionateScreenWidth(20),
                      right: size.getProportionateScreenWidth(20)),
                  child: GridView.builder(
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: size.getProportionateScreenHeight(20),
                        crossAxisSpacing: size.getProportionateScreenWidth(20),
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return SleepMusicItem(
                          imageLink:
                              'lib/assets/sleep/sleep2/sleep_music_$index.svg',
                          title: title[index],
                          subtitle: subtitle[index],
                          size: size);
                    },
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SleepMusicItem extends StatelessWidget {
  final String imageLink;
  final String title;
  final String subtitle;
  const SleepMusicItem({
    Key? key,
    required this.imageLink,
    required this.title,
    required this.subtitle,
    required this.size,
  }) : super(key: key);

  final SizeConfig size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.getProportionateScreenHeight(174),
        width: size.getProportionateScreenWidth(177),
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.getProportionateScreenHeight(122),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(
                imageLink,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: size.getProportionateScreenHeight(11),
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: 'HelveticaNeuebold',
                fontSize: 18,
                color: Color(0xFFE6E7F2),
              ),
            ),
            SizedBox(
              height: size.getProportionateScreenHeight(6.5),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontFamily: 'HelveticaNeuemedium',
                fontSize: 11,
                color: Color(0xFF98A1BD),
              ),
            ),
          ],
        ));
  }
}

class IconListItem extends StatelessWidget {
  final VoidCallback callback;
  final bool isSelected;
  final String icon;
  final String title;
  const IconListItem({
    Key? key,
    required this.callback,
    required this.isSelected,
    required this.icon,
    required this.title,
    required this.size,
  }) : super(key: key);

  final SizeConfig size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: EdgeInsets.only(
          left: size.getProportionateScreenWidth(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.getProportionateScreenHeight(65),
              width: size.getProportionateScreenWidth(65),
              decoration: BoxDecoration(
                color: isSelected ? Colors.blueAccent : Colors.grey,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                  child: SvgPicture.asset(
                icon,
                height: size.getProportionateScreenHeight(25),
                width: size.getProportionateScreenWidth(25),
              )),
            ),
            SizedBox(
              height: size.getProportionateScreenHeight(15),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'HelveticaNeuemedium',
                color: isSelected ? Color(0xFFE6E7F2) : Color(0xFF98A1BD),
              ),
            )
          ],
        ),
      ),
    );
  }
}
