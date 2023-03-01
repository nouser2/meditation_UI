import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/screens/home_screen/common_widgets/home_middle_widget.dart';

class MiddleGridView extends StatefulWidget {
  const MiddleGridView({
    super.key,
    required this.size,
  });

  final SizeConfig size;

  @override
  State<MiddleGridView> createState() => _MiddleGridViewState();
}

class _MiddleGridViewState extends State<MiddleGridView> {
  List info = [];

  void _initData() {
    DefaultAssetBundle.of(context)
        .loadString("lib/screens/home_screen/value_files/value_file.json")
        .then((value) {
      info = jsonDecode(value);
    });
  }

  @override
  void initState() {
    _initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: info.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return HomeMiddleWidgetItem(
          backGroundColor: Color(int.parse(info[index]["backGroundColor"])),
          mainTitle: info[index]["mainTitle"],
          mainTitleColor: Color(int.parse(info[index]["mainTitleColor"])),
          subtitle: info[index]["subtitle"],
          subTitleColor: Color(int.parse(info[index]["subTitleColor"])),
          imageLink: info[index]["imageLink"],
          time: info[index]["time"],
          timeTextColor: Color(int.parse(info[index]["timeTextColor"])),
          startButtonColor: Color(int.parse(info[index]["startButtonColor"])),
          startButtonfillColor:
              Color(int.parse(info[index]["startButtonfillColor"])),
          size: widget.size,
        );
      },
    );
  }
}
