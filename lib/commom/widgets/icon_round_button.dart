import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/constants/size_config.dart';

class IconRoundButton extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final Color fillColor;
  final Color textColor;
  final String iconValue;
  final SizeConfig size;
  const IconRoundButton({
    Key? key,
    required this.callback,
    required this.title,
    required this.fillColor,
    required this.textColor,
    required this.iconValue,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: SizeConfig().getProportionateScreenHeight(63),
        width: SizeConfig().getProportionateScreenWidth(374),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: fillColor,
        ),
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: size.getProportionateScreenWidth(35),
              ),
              SvgPicture.asset(
                iconValue,
                height: size.getProportionateScreenHeight(24),
                width: size.getProportionateScreenWidth(12),
              ),
              SizedBox(
                width: size.getProportionateScreenWidth(46),
              ),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: textColor,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
