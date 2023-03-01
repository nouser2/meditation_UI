import 'package:flutter/material.dart';
import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/screens/course_details_screen/common_widgets/music_play_item.dart';

class FemaleVOiceTabView extends StatelessWidget {
  final SizeConfig size;
  const FemaleVOiceTabView({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MusicPlayItem(
              size: size,
              iconAsset: 'lib/assets/common_asset/play_button_blue.svg',
              title: 'Focus Attention',
              time: "10 MIN"),
          MusicPlayItem(
              size: size,
              iconAsset: 'lib/assets/common_asset/play_button_white.svg',
              title: 'Body Scan',
              time: '15 MIN'),
          MusicPlayItem(
              size: size,
              iconAsset: 'lib/assets/common_asset/play_button_white.svg',
              title: 'Making Happy',
              time: '3 MIN'),
          MusicPlayItem(
              size: size,
              iconAsset: 'lib/assets/common_asset/play_button_white.svg',
              title: 'Making Happy',
              time: '3 MIN'),
        ],
      ),
    );
  }
}
