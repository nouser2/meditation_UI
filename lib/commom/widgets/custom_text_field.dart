import 'package:flutter/material.dart';

import 'package:meditation_screens/constants/size_config.dart';

class CustomTextField extends StatelessWidget {
  final Color fillColor;
  final Color hintColor;
  final String hintText;
  final TextEditingController textController;
  final TextInputType keyBoardType;
  final Color valueColor;

  const CustomTextField({
    Key? key,
    required this.fillColor,
    required this.hintColor,
    required this.hintText,
    required this.textController,
    required this.keyBoardType,
    required this.valueColor,
    required this.size,
  }) : super(key: key);

  final SizeConfig size;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: valueColor,
        fontFamily: 'HelveticaNeue',
        fontWeight: FontWeight.w300,
        fontSize: 16,
      ),
      controller: textController,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
        constraints: BoxConstraints(
            maxHeight: size.getProportionateScreenHeight(63),
            minWidth: size.getProportionateScreenWidth(374),
            maxWidth: size.getProportionateScreenWidth(374),
            minHeight: size.getProportionateScreenHeight(63)),
        filled: true,
        fillColor: fillColor,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            fontFamily: 'HelveticaNeue',
            fontWeight: FontWeight.w300,
            fontSize: 16,
            color: hintColor),
      ),
    );
  }
}
