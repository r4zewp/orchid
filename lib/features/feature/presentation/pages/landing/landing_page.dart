import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';
import 'package:orchid/features/feature/presentation/widgets/header_banner_button.dart';
import 'package:orchid/features/feature/presentation/widgets/header_banner_image_widget.dart';
import 'package:orchid/features/feature/presentation/widgets/landing_about.dart';
import 'package:orchid/features/feature/presentation/widgets/landing_banner.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  ScrollController scrlCtrl = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: scrlCtrl,
      child: Column(
        children: [
          const LandingBanner(),
          SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(Consts.aboutBg),
                const Align(
                  alignment: Alignment.center,
                  child: LandingAbout(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
