import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';
import 'package:orchid/features/feature/presentation/pages/landing/landing_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  /// Main tabs widgets.
  List<Widget> tabs = const [
    Text(Consts.home),
    Text(Consts.purchaseTerms),
    Text(Consts.contacts),
  ];

  @override
  Widget build(BuildContext context) {
    /// Main tabs controller.
    TabController ctrl = TabController(
      animationDuration: const Duration(milliseconds: 1000),
      length: 3,
      vsync: this,
    );

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * (100 / 1080),
        automaticallyImplyLeading: false,
        title: Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  TabBar(
                    isScrollable: true,
                    labelPadding:
                        EdgeInsets.only(right: size.width * (50 / 1920)),
                    padding: EdgeInsets.zero,
                    splashFactory: NoSplash.splashFactory,
                    indicatorColor: Colors.transparent,
                    overlayColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.transparent;
                      } else if (states.contains(MaterialState.focused)) {
                        return Colors.transparent;
                      } else if (states.contains(MaterialState.hovered)) {
                        return Colors.transparent;
                      }
                    }),
                    controller: ctrl,
                    tabs: tabs,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width * (55 / 1920),
                        child: Stack(
                          children: [
                            SvgPicture.asset('assets/icons/cart.svg'),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * (8 / 1920)),
                      RichText(
                        overflow: TextOverflow.fade,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Корзина покупок - ",
                              style: TextStyle(
                                fontSize: 15,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w500,
                                fontFamily: Consts.primaryFont,
                                color: AppColors.cartNumberColor,
                              ),
                            ),
                            TextSpan(
                              text: '0 р.',
                              style: TextStyle(
                                fontSize: 15,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w700,
                                fontFamily: Consts.primaryFont,
                                color: AppColors.cartNumberColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: ctrl,
        children: const [
          Landing(),
          Text('asd'),
          Text('asd'),
        ],
      ),
    );
  }
}
