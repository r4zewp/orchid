import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';

class FooterStepTile extends StatelessWidget {
  const FooterStepTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.index,
  });

  final String title;
  final String subtitle;
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                '0${index + 1}. ',
                style: const TextStyle(
                  color: AppColors.accentColor,
                  fontSize: 45,
                  fontWeight: FontWeight.w400,
                  fontFamily: Consts.primaryFont,
                ),
              ),
              SizedBox(
                width: size.width * (174 / 1920),
                child: Divider(
                  color: Colors.black.withOpacity(.1),
                ),
              ),
            ],
          ),
          SizedBox(
            width: size.width * (238 / 1920),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.bannerTitleColor,
                    fontFamily: Consts.primaryFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: AppColors.bannerTitleColor,
                    fontFamily: Consts.primaryFont,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
