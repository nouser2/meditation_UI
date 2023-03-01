import 'package:flutter/material.dart';

import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/screens/course_details_screen/common_widgets/music_play_item.dart';

class MaleVOiceTabView extends StatelessWidget {
  final SizeConfig size;
  const MaleVOiceTabView({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MusicPlayItem(
              size: size,
              iconAsset: 'lib/assets/common_asset/play_button_white.svg',
              title: 'Attention Focus',
              time: "10 MIN"),
          MusicPlayItem(
              size: size,
              iconAsset: 'lib/assets/common_asset/play_button_blue.svg',
              title: 'Scan Body',
              time: '15 MIN'),
          MusicPlayItem(
              size: size,
              iconAsset: 'lib/assets/common_asset/play_button_blue.svg',
              title: 'Happy Making',
              time: '3 MIN'),
        ],
      ),
    );
  }
}
