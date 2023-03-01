import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/constants/size_config.dart';

class SilentAndMoon2 extends StatelessWidget {
  const SilentAndMoon2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Silent',
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'AirbnbCereal',
              fontWeight: FontWeight.w900,
              color: Color(0xFF3F414E)),
        ),
        const SizedBox(
          width: 5,
        ),
        SvgPicture.asset(
          'lib/assets/signUp_and_signIn/logo.svg',
          height: SizeConfig().getProportionateScreenHeight(30),
          width: SizeConfig().getProportionateScreenWidth(30),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          'Moon',
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'AirbnbCereal',
              fontWeight: FontWeight.w900,
              color: Color(0xFF3F414E)),
        )
      ],
    );
  }
}
