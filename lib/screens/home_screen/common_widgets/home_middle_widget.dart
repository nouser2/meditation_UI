import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:meditation_screens/constants/size_config.dart';

class HomeMiddleWidgetItem extends StatelessWidget {
  final Color backGroundColor;
  final String mainTitle;
  final Color mainTitleColor;
  final String subtitle;
  final Color subTitleColor;
  final String imageLink;
  final String time;
  final Color timeTextColor;
  final Color startButtonColor;
  final Color startButtonfillColor;

  const HomeMiddleWidgetItem({
    Key? key,
    required this.backGroundColor,
    required this.mainTitle,
    required this.mainTitleColor,
    required this.subtitle,
    required this.subTitleColor,
    required this.imageLink,
    required this.time,
    required this.timeTextColor,
    required this.startButtonColor,
    required this.startButtonfillColor,
    required this.size,
  }) : super(key: key);

  final SizeConfig size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: size.getProportionateScreenWidth(177),
        height: size.getProportionateScreenHeight(210),
        child: Stack(
          children: [
            SizedBox(
              width: size.getProportionateScreenWidth(177),
              height: size.getProportionateScreenHeight(210),
              child: DecoratedBox(
                decoration: BoxDecoration(color: backGroundColor),
              ),
            ),
            SvgPicture.asset(
              imageLink,
              height: size.getProportionateScreenHeight(210),
              width: size.getProportionateScreenWidth(177),
            ),
            Positioned(
              top: size.getProportionateScreenHeight(85),
              left: 0,
              child: Padding(
                padding: EdgeInsets.only(
                  left: size.getProportionateScreenWidth(15),
                  right: size.getProportionateScreenWidth(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mainTitle,
                      style: TextStyle(
                          fontFamily: 'HelveticaNeuebold',
                          fontSize: 18,
                          color: mainTitleColor),
                    ),
                    SizedBox(
                      height: size.getProportionateScreenHeight(9.5),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontFamily: 'HelveticaNeuemedium',
                        fontSize: 11,
                        color: subTitleColor,
                      ),
                    ),
                    SizedBox(
                      height: size.getProportionateScreenHeight(16),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          time,
                          style: TextStyle(
                            fontFamily: 'HelveticaNeuemedium',
                            fontSize: 11,
                            color: timeTextColor,
                          ),
                        ),
                        SizedBox(
                          width: size.getProportionateScreenWidth(26),
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.getProportionateScreenWidth(15),
                              vertical: size.getProportionateScreenHeight(10),
                            ),
                            decoration: BoxDecoration(
                              color: startButtonfillColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                "START",
                                style: TextStyle(
                                    fontFamily: 'HelveticaNeuemedium',
                                    fontSize: 12,
                                    color: startButtonColor),
                              ),
                            ),
                          ),
                        ),
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
}
