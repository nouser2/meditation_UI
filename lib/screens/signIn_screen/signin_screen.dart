import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:meditation_screens/commom/widgets/back_button_bar.dart';
import 'package:meditation_screens/commom/widgets/common_round_button.dart';
import 'package:meditation_screens/commom/widgets/custom_text_field.dart';
import 'package:meditation_screens/commom/widgets/icon_round_button.dart';
import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/screens/signUp_screen/signup_screen.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void tabBarBack(BuildContext context) {
    Navigator.pop(context);
  }

  void logInWithFaceBook() {}

  void logInWithGoogle() {}

  void loginClick() {}

  @override
  Widget build(BuildContext context) {
    SizeConfig size = SizeConfig();
    return SafeArea(
      child: Stack(
        children: [
          SvgPicture.asset(
            'lib/assets/signIn/sign_in_background.svg',
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
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: true,
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.getProportionateScreenHeight(131),
                  ),
                  const Text(
                    'Welcome Back!',
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
                    height: size.getProportionateScreenHeight(21.5),
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
                  // email text field
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
                    height: size.getProportionateScreenHeight(30),
                  ),
                  RoundButton(
                    callback: () {
                      loginClick();
                    },
                    title: 'LOG IN',
                    fillColor: const Color(0xFF8E97FD),
                    textColor: const Color(0xFFF6F1FB),
                  ),
                  SizedBox(
                    height: size.getProportionateScreenHeight(20),
                  ),
                  TextButton(
                    onPressed: () {
                      // go to forget view
                    },
                    child: const Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF3F414E),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.getProportionateScreenHeight(60.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\' have an Account',
                        style: TextStyle(
                            fontFamily: 'HelveticaNeue',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA1A4B2)),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: (() {
                          // go to login Screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        }),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontFamily: 'HelveticaNeue',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8E97FD)),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
