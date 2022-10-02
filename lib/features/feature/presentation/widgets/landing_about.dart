import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';

class LandingAbout extends StatelessWidget {
  const LandingAbout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * (42 / 1080)),
      child: SizedBox(
        height: size.height * (571 / 1080),
        width: size.width * (1452 / 1920),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: AppColors.dividerColor,
              width: 1,
              strokeAlign: StrokeAlign.inside,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: size.height * (29 / 1080)),
              DecoratedBox(
                decoration: const BoxDecoration(
                  color: AppColors.aboutCategoryTitleColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 18.5,
                    horizontal: 39.5,
                  ),
                  child: Text(
                    Consts.aboutUpper,
                    style: TextStyle(
                      color: AppColors.dividerColor.withOpacity(1),
                      fontFamily: Consts.primaryFont,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
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
