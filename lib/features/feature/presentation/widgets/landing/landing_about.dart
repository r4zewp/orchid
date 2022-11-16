import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';

import 'banner/header_banner_button.dart';

class LandingAbout extends StatelessWidget {
  const LandingAbout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * (42 / 1080)),
      child: SizedBox(
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
          child: Wrap(
            spacing: 43,
            runSpacing: 43,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: size.height * (29 / 1080),
                    ),
                    child: DecoratedBox(
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
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130, bottom: 43 + 29),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * (780 / 1920),
                      child: Wrap(
                        runAlignment: WrapAlignment.start,
                        runSpacing: 25,
                        children: [
                          Text(
                            Consts.aboutLineOne,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: AppColors.dividerColor.withOpacity(1),
                              fontFamily: Consts.primaryFont,
                            ),
                          ),
                          Text(
                            Consts.aboutLineTwo,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppColors.dividerColor.withOpacity(1.0),
                              fontFamily: Consts.primaryFont,
                            ),
                          ),
                          BannerButton(
                            width: 236,
                            height: 68,
                            backgroundColor: AppColors.accentColor,
                            foregroundColor: Colors.white,
                            title: 'Заказать звонок',
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
