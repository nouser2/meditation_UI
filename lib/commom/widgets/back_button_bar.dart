import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:meditation_screens/constants/size_config.dart';

class BackButtonBar extends StatelessWidget {
  const BackButtonBar({
    Key? key,
    required this.size,
    required this.callback,
  }) : super(key: key);

  final SizeConfig size;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(top: size.getProportionateScreenHeight(50)),
        child: Row(
          children: [
            SizedBox(
              width: size.getProportionateScreenWidth(20),
            ),
            Material(
              child: GestureDetector(
                onTap: callback,
                child: SvgPicture.asset(
                  'lib/assets/common_asset/back_button.svg',
                  height: size.getProportionateScreenHeight(55),
                  width: size.getProportionateScreenWidth(55),
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
