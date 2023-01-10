import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';
import 'package:orchid/features/feature/presentation/widgets/landing/banner/header_banner_button.dart';

import 'banner/header_banner_image_widget.dart';

class LandingBanner extends StatefulWidget {
  const LandingBanner({super.key});

  @override
  State<LandingBanner> createState() => _LandingBannerState();
}

class _LandingBannerState extends State<LandingBanner> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.bannerColor,
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: BannerImage(
                imageUrl: Consts.bannerFirstBg,
                opacity: 0.5,
                fit: BoxFit.fill,
                width: size.width * 0.6,
                size: size,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: BannerImage(
                width: size.width * 0.6,
                opacity: 0.1,
                fit: BoxFit.cover,
                imageUrl: Consts.bannerSecondBg,
                size: size,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: BannerImage(
                width: size.width * 0.5,
                imageUrl: Consts.bannerFirstFg,
                opacity: 0.5,
                fit: BoxFit.contain,
                size: size,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: size.width * (1180 / 1920),
                child: Wrap(
                  children: [
                    SizedBox(
                      width: size.width * (650 / 1920),
                      child: Stack(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: ClipRect(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Image.asset(
                                Consts.bannerSecondFg,
                                fit: BoxFit.contain,
                                filterQuality: FilterQuality.high,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: size.height * (100 / 1080),
                            ),
                            child: SizedBox(
                              width: size.width * (650 / 1920),
                              child: Wrap(
                                runSpacing: 25.0,
                                children: [
                                  const Text(
                                    Consts.bannerLineOne,
                                    style: TextStyle(
                                      color: AppColors.bannerTitleColor,
                                      fontFamily: Consts.primaryFont,
                                      fontSize: 48,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const Text(
                                    Consts.bannerLineTwo,
                                    style: TextStyle(
                                      color: AppColors.bannerSubtitleColor,
                                      fontFamily: Consts.primaryFont,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const Text(
                                    Consts.bannerLineThree,
                                    style: TextStyle(
                                      color: AppColors.bannerSubtitleColor,
                                      fontFamily: Consts.primaryFont,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: size.height * (51 / 1080)),
                                  BannerButton(
                                    width: 236,
                                    height: 68,
                                    backgroundColor: Colors.white,
                                    foregroundColor: Colors.black,
                                    title: Consts.bannerButtonTitle,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
