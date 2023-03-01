import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/commom/widgets/back_button_bar_with_more.dart';
import 'package:meditation_screens/constants/size_config.dart';

class MusicPlayScreen extends StatelessWidget {
  MusicPlayScreen({super.key});
  final SizeConfig size = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFFAF7F2),
            child: SvgPicture.asset(
              'lib/assets/musicv2/musicv2.svg',
              fit: BoxFit.cover,
            ),
          ),
          BackButtonBarWithMore(size: size, callback: () {}),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.getProportionateScreenHeight(391),
                ),
                const Text(
                  'Focus Attention',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 34,
                      fontFamily: 'HelveticaNeuebold',
                      color: Color(0xFF3F414E)),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(15),
                ),
                const Text(
                  '7 DAYS OF CALM',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'HelveticaNeuemedium',
                    color: Color(0xFFA0A3B1),
                  ),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(70),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(201),
                  width: size.getProportionateScreenWidth(374),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: size.getProportionateScreenWidth(43)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'lib/assets/musicv2/back_15.svg',
                            ),
                            SizedBox(
                              width: size.getProportionateScreenWidth(50),
                            ),
                            SvgPicture.asset(
                              'lib/assets/musicv2/circle_playback.svg',
                              height: size.getProportionateScreenHeight(109),
                            ),
                            SizedBox(
                              width: size.getProportionateScreenWidth(50),
                            ),
                            SvgPicture.asset(
                              'lib/assets/musicv2/forward_15.svg',
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.getProportionateScreenHeight(70),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '01:30',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'HelveticaNeuemedium',
                                color: Color(0xFF3F414E),
                              ),
                            ),
                            Text(
                              '45:00',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'HelveticaNeuemedium',
                                color: Color(0xFF3F414E),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
