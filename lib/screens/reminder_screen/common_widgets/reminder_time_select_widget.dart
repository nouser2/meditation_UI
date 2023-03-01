import 'package:flutter/material.dart';

import 'package:meditation_screens/constants/size_config.dart';

class ReminderTimeSelectBox extends StatefulWidget {
  const ReminderTimeSelectBox({
    super.key,
    required this.size,
    required FixedExtentScrollController hourController,
    required FixedExtentScrollController minController,
    required FixedExtentScrollController amController,
  })  : _hourController = hourController,
        _minController = minController,
        _amController = amController;

  final SizeConfig size;
  final FixedExtentScrollController _hourController;
  final FixedExtentScrollController _minController;
  final FixedExtentScrollController _amController;

  @override
  State<ReminderTimeSelectBox> createState() => _ReminderTimeSelectBoxState();
}

class _ReminderTimeSelectBoxState extends State<ReminderTimeSelectBox> {
  int _minSelected = 0;
  int _hourSelected = 0;
  int _amSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.getProportionateScreenHeight(212),
      width: widget.size.getProportionateScreenWidth(399),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F9),
        borderRadius: BorderRadius.circular(13),
      ),
      child: SizedBox(
        height: widget.size.getProportionateScreenHeight(179.5),
        width: widget.size.getProportionateScreenWidth(373.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: widget.size.getProportionateScreenWidth(92),
            ),
            // hours wheel
            SizedBox(
              width: widget.size.getProportionateScreenWidth(30),
              child: ListWheelScrollView.useDelegate(
                onSelectedItemChanged: (value) {
                  setState(() {
                    _hourSelected = value;
                  });
                },
                controller: widget._hourController,
                itemExtent: 50,
                perspective: 0.005,
                diameterRatio: 2.7,
                physics: const FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 13,
                  builder: (context, index) {
                    Color values;
                    if (index == _hourSelected) {
                      values = const Color(0xFF263238);
                    } else {
                      values = const Color(0xFFA1A4B2);
                    }

                    return MyHours(
                      color: values,
                      hours: index,
                    );
                  },
                ),
              ),
            ),

            SizedBox(
              width: widget.size.getProportionateScreenWidth(45),
            ),

            // minutes wheel
            SizedBox(
              width: widget.size.getProportionateScreenWidth(30),
              child: ListWheelScrollView.useDelegate(
                onSelectedItemChanged: (value) {
                  setState(() {
                    _minSelected = value;
                  });
                },
                controller: widget._minController,
                itemExtent: 50,
                perspective: 0.005,
                diameterRatio: 2.7,
                physics: const FixedExtentScrollPhysics(),
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 60,
                  builder: (context, index) {
                    Color values;
                    if (index == _minSelected) {
                      values = const Color(0xFF263238);
                    } else {
                      values = const Color(0xFFA1A4B2);
                    }
                    return MyMinutes(
                      color: values,
                      mins: index,
                    );
                  },
                ),
              ),
            ),

            SizedBox(
              width: widget.size.getProportionateScreenWidth(45),
            ),

            // am or pm
            SizedBox(
              child: SizedBox(
                width: widget.size.getProportionateScreenWidth(43),
                child: ListWheelScrollView.useDelegate(
                  onSelectedItemChanged: (value) {
                    setState(() {
                      _amSelected = value;
                    });
                  },
                  controller: widget._amController,
                  itemExtent: 50,
                  perspective: 0.005,
                  diameterRatio: 2.7,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                    childCount: 2,
                    builder: (context, index) {
                      Color values;
                      if (index == _amSelected) {
                        values = const Color(0xFF263238);
                      } else {
                        values = const Color(0xFFA1A4B2);
                      }
                      if (index == 0) {
                        return AmPm(
                          color: values,
                          isItAm: true,
                        );
                      } else {
                        return AmPm(
                          color: values,
                          isItAm: false,
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}

class MyMinutes extends StatelessWidget {
  int mins;
  Color color;

  MyMinutes({
    Key? key,
    required this.mins,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        mins < 10 ? '0$mins' : mins.toString(),
        style: TextStyle(
          fontFamily: 'HelveticaNeuemedium',
          fontSize: 24,
          color: color,
        ),
      ),
    );
  }
}

class MyHours extends StatelessWidget {
  int hours;
  Color color;
  MyHours({
    Key? key,
    required this.hours,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        hours.toString(),
        style: TextStyle(
          fontFamily: 'HelveticaNeuemedium',
          fontSize: 24,
          color: color,
        ),
      ),
    );
  }
}

class AmPm extends StatelessWidget {
  final bool isItAm;
  Color color;
  AmPm({
    Key? key,
    required this.isItAm,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(isItAm == true ? 'AM' : 'PM',
          style: TextStyle(
            fontFamily: 'HelveticaNeuemedium',
            fontSize: 24,
            color: color,
          )),
    );
  }
}
