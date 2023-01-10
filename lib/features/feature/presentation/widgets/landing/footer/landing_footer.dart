import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';
import 'package:orchid/features/feature/presentation/widgets/landing/footer/footer_step_tile.dart';

import '../../alert_dialogs/contact_dialog.dart';
import '../banner/header_banner_button.dart';

class LandingFooter extends StatelessWidget {
  const LandingFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xffEEF1E6).withOpacity(.45),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Wrap(
            runSpacing: 55,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              Center(
                child: Wrap(
                  direction: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 55.0),
                      child: Wrap(
                        direction: Axis.vertical,
                        runAlignment: WrapAlignment.center,
                        children: const [
                          Text(
                            'Очень просто и доступно каждому',
                            style: TextStyle(
                              fontFamily: Consts.primaryFont,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: AppColors.bannerTitleColor,
                            ),
                          ),
                          Text(
                            'Этапы нашей \nработы',
                            style: TextStyle(
                              color: AppColors.bannerTitleColor,
                              fontFamily: Consts.primaryFont,
                              fontWeight: FontWeight.w700,
                              fontSize: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...List.generate(
                          3,
                          (index) => FooterStepTile(
                            title: Consts.steps.keys.toList()[index],
                            subtitle: Consts.steps.values.toList()[index],
                            index: index,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              BannerButton(
                width: 236,
                height: 68,
                backgroundColor: AppColors.accentColor,
                title: Consts.apply,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const ContactDialog(),
                  );
                },
                foregroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
