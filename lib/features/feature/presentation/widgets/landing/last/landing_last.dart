import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';
import 'package:orchid/features/feature/presentation/widgets/landing/banner/header_banner_button.dart';

import '../../alert_dialogs/contact_dialog.dart';

class LandingLast extends StatelessWidget {
  const LandingLast({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xffEEF1E6).withOpacity(.45),
        ),
        child: Center(
          child: SizedBox(
            width: size.width * (1193 / 1920),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 60.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: [
                  SizedBox(
                    width: size.width * (452 / 1920),
                    child: Column(
                      children: [
                        Wrap(
                          children: const [
                            /// TODO: add phone icon
                            SelectableText(
                              Consts.phoneNumber,
                              style: TextStyle(
                                fontFamily: Consts.primaryFont,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 27,
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size.width * (550 / 1920),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          Consts.location,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: Consts.primaryFont,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10),
                        RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: Consts.timetableTitle,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: Consts.primaryFont,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              TextSpan(
                                text: Consts.timetable,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: Consts.primaryFont,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
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
        ),
      ),
    );
  }
}
