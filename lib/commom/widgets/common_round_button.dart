import 'package:flutter/material.dart';
import 'package:meditation_screens/constants/size_config.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  final Color fillColor;
  final Color textColor;
  const RoundButton({
    Key? key,
    required this.callback,
    required this.title,
    required this.fillColor,
    required this.textColor,
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
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'HelveticaNeue',
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
