import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/commom/widgets/back_button_bar.dart';
import 'package:meditation_screens/commom/widgets/common_round_button.dart';
import 'package:meditation_screens/commom/widgets/custom_text_field.dart';
import 'package:meditation_screens/commom/widgets/icon_round_button.dart';
import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/screens/welcome_screen/welcome_screen.dart';

class SignUpScreen extends StatefulWidget { 
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
} 

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showCheckBox = true;

  void tabBarBack(BuildContext context) {
    Navigator.pop(context);
  }

  void onPressedGetStarted(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return const WelcomeScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig size = SizeConfig();
    return Stack(
      children: [
        SvgPicture.asset(
          'lib/assets/signUp/sign_up_background.svg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: BackButtonBar(
              size: size,
              callback: () {
                tabBarBack(context);
              }),
        ),
        Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.getProportionateScreenHeight(131),
                ),
                const Text(
                  'Create your account',
                  style: TextStyle(
                    fontFamily: 'HelveticaNeue',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3F414E),
                  ),
                ),
                SizedBox(height: size.getProportionateScreenHeight(33)),
                IconRoundButton(
                  size: size,
                  callback: () {
                    logInWithFaceBook();
                  },
                  title: 'CONTINUE WITH FACEBOOK',
                  fillColor: const Color(0xFF7583CA),
                  textColor: const Color(0xFFF6F1FB),
                  iconValue: 'lib/assets/signIn/facebook_logo.svg',
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(20),
                ),
                IconRoundButton(
                  size: size,
                  callback: () {
                    logInWithGoogle();
                  },
                  title: 'CONTINUE WITH GOOGLE',
                  fillColor: const Color(0xFFEBEAEC),
                  textColor: const Color(0xFF3F414E),
                  iconValue: 'lib/assets/signIn/google_logo.svg',
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(40),
                ),
                const Text(
                  'OR LOG IN WITH EMAIL',
                  style: TextStyle(
                      fontFamily: 'HelveticaNeue',
                      color: Color(0xFFA1A4B2),
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(40),
                ),
                CustomTextField(
                  fillColor: const Color(0xFFF2F3F7),
                  hintColor: const Color(0xFFA1A4B2),
                  hintText: 'User Name',
                  textController: nameController,
                  keyBoardType: TextInputType.name,
                  size: size,
                  valueColor: const Color(0xFF3F414E),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(20),
                ),
                CustomTextField(
                  fillColor: const Color(0xFFF2F3F7),
                  hintColor: const Color(0xFFA1A4B2),
                  hintText: 'Email address',
                  textController: emailController,
                  keyBoardType: TextInputType.emailAddress,
                  size: size,
                  valueColor: const Color(0xFF3F414E),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(20),
                ),
                CustomTextField(
                  fillColor: const Color(0xFFF2F3F7),
                  hintColor: const Color(0xFFA1A4B2),
                  hintText: 'Password',
                  textController: passwordController,
                  keyBoardType: TextInputType.visiblePassword,
                  size: size,
                  valueColor: const Color(0xFF3F414E),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(24.5),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.getProportionateScreenWidth(20),
                    ),
                    const Text(
                      'i have read the ',
                      style: TextStyle(
                          fontFamily: 'HelveticaNeue',
                          color: Color(0xFFA1A4B2),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Privace Policy',
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            color: Color(0xFF7583CA),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Checkbox(
                      onChanged: (value) {
                        setState(() {
                          _showCheckBox = value!;
                        });
                      },
                      value: _showCheckBox,
                    ),
                    SizedBox(
                      width: size.getProportionateScreenWidth(30),
                    )
                  ],
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(32),
                ),
                RoundButton(
                  callback: () {
                    onPressedGetStarted(context);
                  },
                  title: 'GET STARTED',
                  fillColor: const Color(0xFF8E97FD),
                  textColor: const Color(0xFFF6F1FB),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void logInWithFaceBook() {}

  void logInWithGoogle() {}
}
