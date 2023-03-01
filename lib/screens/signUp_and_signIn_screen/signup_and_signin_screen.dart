import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/commom/widgets/common_round_button.dart';
import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/commom/widgets/SilentAndMoon2.dart';
import 'package:meditation_screens/screens/signUp_and_signIn_screen/common_widgets/account_exist.dart';
import 'package:meditation_screens/screens/signUp_screen/signup_screen.dart';

class SignupAndSigninScreen extends StatelessWidget {
  const SignupAndSigninScreen({
    Key? key,
  }) : super(key: key);

  void signUpOnClick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig size = SizeConfig();
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const DecoratedBox(
            decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
          ),
        ),
        SvgPicture.asset(
          'lib/assets/signUp_and_signIn/sign_up_and_sign_in_background.svg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.getProportionateScreenHeight(56),
                ),
                const SilentAndMoon2(),
                SizedBox(
                  height: size.getProportionateScreenHeight(80),
                ),
                SvgPicture.asset(
                  'lib/assets/signUp_and_signIn/first_screen_girl.svg',
                  height: size.getProportionateScreenHeight(242),
                  width: size.getProportionateScreenWidth(332),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(131),
                ),
                const Text(
                  'We are what we do',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF3F414E),
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.getProportionateScreenHeight(15)),
                const Text(
                  'Thousand of people are usign silent moon \n for smalls meditation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFA1A4B2),
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(62),
                ),
                RoundButton(
                  callback: () {
                    signUpOnClick(context);
                  },
                  title: 'SIGN UP',
                  fillColor: const Color(0xFF8E97FD),
                  textColor: const Color(0xFFF6F1FB),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(20),
                ),
                const AccountExistWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
