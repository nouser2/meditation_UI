import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:meditation_screens/constants/size_config.dart';

class MusicPlayItem extends StatelessWidget {
  final SizeConfig size;
  final String iconAsset;
  final String title;
  final String time;
  const MusicPlayItem({
    Key? key,
    required this.size,
    required this.iconAsset,
    required this.title,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.getProportionateScreenHeight(80),
      child: Padding(
        padding: EdgeInsets.only(
          top: size.getProportionateScreenHeight(20),
          bottom: size.getProportionateScreenHeight(18),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                iconAsset,
                height: size.getProportionateScreenHeight(40),
                width: size.getProportionateScreenWidth(40),
              ),
              SizedBox(
                width: size.getProportionateScreenWidth(20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'HelveticaNeuemedium',
                      fontSize: 16,
                      color: Color(0xFF3F414E),
                    ),
                  ),
                  SizedBox(
                    height: size.getProportionateScreenHeight(6),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontFamily: 'HelveticaNeuemedium',
                      fontSize: 11,
                      color: Color(0xFFA1A4B2),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
