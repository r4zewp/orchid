import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/consts.dart';
import 'package:orchid/features/feature/presentation/widgets/landing/footer/landing_footer.dart';
import 'package:orchid/features/feature/presentation/widgets/landing/landing_catalog.dart';
import 'package:orchid/features/feature/presentation/widgets/landing/last/landing_last.dart';

import '../../widgets/landing/landing_about.dart';
import '../../widgets/landing/landing_banner.dart';
import '../../widgets/map/landing_map.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  ScrollController scrlCtrl = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: scrlCtrl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LandingBanner(),
          SizedBox(
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                Image.asset(Consts.aboutBg),
                Wrap(
                  children: const [
                    Align(
                      alignment: Alignment.center,
                      child: LandingAbout(),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: LandingCatalog(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const LandingFooter(),
          const LandingLast(),
        ],
      ),
    );
  }
}
