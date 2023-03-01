import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_screens/commom/widgets/back_button_bar_with_more.dart';
import 'package:meditation_screens/constants/size_config.dart';
import 'package:meditation_screens/screens/course_details_screen/common_widgets/femal_voice_tabview.dart';
import 'package:meditation_screens/screens/course_details_screen/common_widgets/male_voice_tabview.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({super.key});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail>
    with SingleTickerProviderStateMixin {
  SizeConfig size = SizeConfig();
  late TabController _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: size.getProportionateScreenHeight(289) - 24,
                child: Stack(
                  children: [
                    Container(
                      color: const Color(0xFF3F414E),
                      child: SvgPicture.asset(
                        'lib/assets/course_details/happyMorningBackground.svg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    BackButtonBarWithMore(size: size, callback: () {})
                  ],
                ),
              ),
              SizedBox(
                height: size.getProportionateScreenHeight(607),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.getProportionateScreenWidth(20),
                      right: size.getProportionateScreenWidth(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.getProportionateScreenHeight(31.3),
                      ),
                      const Text(
                        'Happy Morning',
                        style: TextStyle(
                            fontFamily: 'HelveticaNeuebold',
                            fontSize: 34,
                            color: Color(0xFF3F414E)),
                      ),
                      SizedBox(
                        height: size.getProportionateScreenHeight(15.3),
                      ),
                      const Text(
                        'COURSE',
                        style: TextStyle(
                            fontFamily: 'HelveticaNeuemedium',
                            fontSize: 14,
                            color: Color(0xFFA1A4B2)),
                      ),
                      SizedBox(
                        height: size.getProportionateScreenHeight(20),
                      ),
                      const Text(
                        'Ease the mind into a restful night’s sleep  with \n these deep, amblent tones.',
                        style: TextStyle(
                          fontFamily: 'HelveticaNeuelight',
                          fontSize: 16,
                          color: Color(0xFFA1A4B2),
                        ),
                      ),
                      SizedBox(
                        height: size.getProportionateScreenHeight(30),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'lib/assets/course_details/like.svg',
                            height: size.getProportionateScreenHeight(16),
                            width: size.getProportionateScreenWidth(18),
                          ),
                          SizedBox(
                            width: size.getProportionateScreenWidth(10),
                          ),
                          const Text(
                            '24.234 Favorits',
                            style: TextStyle(
                              fontFamily: 'HelveticaNeuemedium',
                              fontSize: 14,
                              color: Color(0xFFA1A4B2),
                            ),
                          ),
                          SizedBox(
                            width: size.getProportionateScreenWidth(49),
                          ),
                          SvgPicture.asset(
                            'lib/assets/course_details/music.svg',
                            height: size.getProportionateScreenHeight(16),
                            width: size.getProportionateScreenWidth(20),
                          ),
                          SizedBox(
                            width: size.getProportionateScreenWidth(10),
                          ),
                          const Text(
                            '34.234 Lestening',
                            style: TextStyle(
                              fontFamily: 'HelveticaNeuemedium',
                              fontSize: 14,
                              color: Color(0xFFA1A4B2),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.getProportionateScreenHeight(43.5),
                      ),
                      const Text(
                        'Pick a Narrator',
                        style: TextStyle(
                          fontFamily: 'HelveticaNeuebold',
                          fontSize: 20,
                          color: Color(0xFF3F414E),
                        ),
                      ),
                      SizedBox(
                        height: size.getProportionateScreenHeight(25),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            TabBar(
                              tabs: [
                                Tab(
                                  key: UniqueKey(),
                                  child: Text(
                                    'MALE VOICE',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNeuebold',
                                        fontSize: 16,
                                        color: _tabcontroller.index == 0
                                            ? const Color(0xFF8E97FD)
                                            : const Color(0xFFA1A4B2)),
                                  ),
                                ),
                                Tab(
                                  key: UniqueKey(),
                                  child: Text(
                                    'FEMALE VOICE',
                                    style: TextStyle(
                                        fontFamily: 'HelveticaNeuebold',
                                        fontSize: 16,
                                        color: _tabcontroller.index == 1
                                            ? const Color(0xFF8E97FD)
                                            : const Color(0xFFA1A4B2)),
                                  ),
                                )
                              ],
                              controller: _tabcontroller,
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _tabcontroller,
                                children: [
                                  MaleVOiceTabView(
                                    size: size,
                                  ),
                                  FemaleVOiceTabView(size: size)
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
