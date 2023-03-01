import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/constants/size_config.dart';

class SilentAndMoon extends StatelessWidget {
  const SilentAndMoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Silent',
            style: TextStyle(
                fontFamily: 'AirbnbCereal',
                fontWeight: FontWeight.w900,
                color: Color(0xFFFFFFFF))),
        const SizedBox(
          width: 5,
        ),
        SvgPicture.asset(
          'lib/assets/welcome/logo.svg',
          height: SizeConfig().getProportionateScreenHeight(30),
          width: SizeConfig().getProportionateScreenWidth(30),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          'Moon',
          style: TextStyle(
              fontFamily: 'AirbnbCereal',
              fontWeight: FontWeight.w900,
              color: Color(0xFFFFFFFF)),
        )
      ],
    );
  }
}
