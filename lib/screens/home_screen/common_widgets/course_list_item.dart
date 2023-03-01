import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/constants/size_config.dart';

class CourseListView extends StatelessWidget {
  final SizeConfig size;
  final String imageLink;
  final String backgroundColor;
  final String title;
  const CourseListView({
    Key? key,
    required this.size,
    required this.imageLink,
    required this.backgroundColor,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: size.getProportionateScreenWidth(20),
      ),
      height: size.getProportionateScreenHeight(181),
      width: size.getProportionateScreenWidth(160),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.getProportionateScreenHeight(113),
            width: size.getProportionateScreenWidth(160),
            color: Color(int.parse(backgroundColor)),
            child: SvgPicture.asset(
              imageLink,
            ),
          ),
          SizedBox(
            height: size.getProportionateScreenHeight(10.5),
          ),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'HelveticaNeuebold',
              fontSize: 18,
              color: Color(0xFF3F414E),
            ),
          ),
          SizedBox(
            height: size.getProportionateScreenHeight(6),
          ),
          const Text(
            'MEDITATION . 3-10 MIN',
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: Color(0xFFA1A4B2)),
          )
        ],
      ),
    );
  }
}
