import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/commom/widgets/common_round_button.dart';
import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/screens/home_screen/home_screen.dart';
import 'package:meditation_screens/screens/welcome_screen/common_widgets/silent_and_moon.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  void getStartedOnClick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      const SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Color(0xFF8E97FD)),
        ),
      ),
      SvgPicture.asset(
        'lib/assets/welcome/welcome_background.svg',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      Positioned(
        left: SizeConfig().getProportionateScreenWidth(20),
        bottom: SizeConfig().getProportionateScreenHeight(220),
        child: SvgPicture.asset(
          'lib/assets/welcome/girl.svg',
          height: SizeConfig().getProportionateScreenHeight(247.79),
          width: SizeConfig().getProportionateScreenWidth(252.46),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const SilentAndMoon(),
              const SizedBox(
                height: 75,
              ),
              const Text(
                'Hi Afsar, Welcome',
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFFFECCC),
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'to Silent Moon',
                style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFFFECCC),
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Explore the app, Find some peace of mind to',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFEBEAEC),
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'prepare for meditation.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFEBEAEC),
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 400,
              ),
              RoundButton(
                textColor: const Color(0xFF3F414E),
                callback: () {
                  getStartedOnClick(context);
                },
                title: 'GET STARTED',
                fillColor: const Color(0xFFEBEAEC),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
