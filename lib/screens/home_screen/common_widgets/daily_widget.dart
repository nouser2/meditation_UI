import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/constants/size_config.dart';

class DailyWidget extends StatelessWidget {
  const DailyWidget({
    super.key,
    required this.size,
  });

  final SizeConfig size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.getProportionateScreenHeight(95),
      width: size.getProportionateScreenWidth(374),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Stack(
        children: [
          SvgPicture.asset(
            'lib/assets/home/dailybackground.svg',
            height: size.getProportionateScreenHeight(95),
            width: size.getProportionateScreenWidth(374),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.getProportionateScreenWidth(30),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Daily Thought',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'HelveticaNeuebold',
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    SizedBox(
                      height: size.getProportionateScreenHeight(10),
                    ),
                    const Text(
                      'MEDITATION . 3-10 MIN',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeuemedium',
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.play_circle_fill_rounded,
                    color: Color(
                      0xFFFFFFFF,
                    ),
                    size: 40,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: size.getProportionateScreenWidth(30),
              )
            ],
          ),
        ],
      ),
    );
  }
}