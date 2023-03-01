import 'package:flutter/material.dart';
import 'package:meditation_screens/commom/widgets/common_round_button.dart';

import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/screens/reminder_screen/common_widgets/reminder_time_select_widget.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  late FixedExtentScrollController _hourController;
  late FixedExtentScrollController _minController;
  late FixedExtentScrollController _amController;

  List<bool> selectedWeekDays = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
  ];

  List<String> days = [
    'SU',
    'M',
    'T',
    'W',
    "TH",
    "F",
    "S",
  ];
  late SizeConfig size;
  @override
  void initState() {
    size = SizeConfig();
    _hourController = FixedExtentScrollController();
    _minController = FixedExtentScrollController();
    _amController = FixedExtentScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _hourController.dispose();
    _minController.dispose();
    _amController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: size.getProportionateScreenWidth(20),
          right: size.getProportionateScreenWidth(20),
        ),
        child: Container(
          //  color: Colors.red,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.getProportionateScreenHeight(82.2),
                ),
                const Text(
                  'What time would you \n like to meditate?',
                  style: TextStyle(
                      fontFamily: 'HelveticaNeuebold',
                      fontSize: 24,
                      color: Color(0xFF3F414E)),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(15),
                ),
                const Text(
                  'Any time you can choose but We recommend\nfirst thing in th morning.',
                  style: TextStyle(
                      fontFamily: 'HelveticaNeuelight',
                      fontSize: 16,
                      color: Color(0xFFA1A4B2)),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(30),
                ),
                ReminderTimeSelectBox(
                  size: size,
                  hourController: _hourController,
                  minController: _minController,
                  amController: _amController,
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(30),
                ),
                const Text(
                  'Which day would you \n like to meditate?',
                  style: TextStyle(
                      fontFamily: 'HelveticaNeuebold',
                      fontSize: 24,
                      color: Color(0xFF3F414E)),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(15),
                ),
                const Text(
                  'Everyday is best, but we recommend picking \n at least five.',
                  style: TextStyle(
                      fontFamily: 'HelveticaNeuelight',
                      fontSize: 16,
                      color: Color(0xFFA1A4B2)),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(40),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(42),
                  width: double.maxFinite,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      bool isSlected = selectedWeekDays[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedWeekDays[index] = !selectedWeekDays[index];
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: isSlected
                              ? const Color(0xFF3F414E)
                              : const Color(0xFFFFFFFF),
                          radius: size.getProportionateScreenHeight(28),
                          child: Center(
                              child: Text(
                            days[index],
                            style: TextStyle(
                                fontFamily: 'HelveticaNeuemedium',
                                color: isSlected
                                    ? const Color(0xFFFEFFFE)
                                    : const Color(0xFFA1A4B2)),
                          )),
                        ),
                      );
                    },
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(57),
                ),
                RoundButton(
                  callback: () {},
                  title: "SAVE",
                  fillColor: const Color(0xFF8E97FD),
                  textColor: const Color(0xFFF6F1FB),
                ),
                SizedBox(
                  height: size.getProportionateScreenHeight(20),
                ),
                const Center(
                  child: Text(
                    "NO THANKS",
                    style: TextStyle(
                      fontFamily: "HelveticaNeuemedium",
                      color: Color(0xFF3F414E),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
