import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:meditation_screens/constants/size_config.dart';

class BackButtonBarWithMore extends StatelessWidget {
  const BackButtonBarWithMore({
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
            CircleAvatar(
              radius: size.getProportionateScreenHeight(29),
              backgroundColor: Colors.white,
              child: GestureDetector(
                onTap: callback,
                child: SvgPicture.asset(
                  'lib/assets/common_asset/back_button.svg',
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            CircleAvatar(
              radius: size.getProportionateScreenHeight(29),
              backgroundColor: Colors.black26,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'lib/assets/course_details/heart.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: size.getProportionateScreenWidth(15),
            ),
            CircleAvatar(
              radius: size.getProportionateScreenHeight(29),
              backgroundColor: Colors.black26,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('lib/assets/course_details/download.svg',
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              width: size.getProportionateScreenWidth(19.6),
            ),
          ],
        ),
      ),
    );
  }
}
