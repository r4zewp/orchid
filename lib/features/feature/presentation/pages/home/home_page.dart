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
    Text(Consts.about),
    Text(Consts.purchaseTerms),
    Text(Consts.contacts),
  ];

  @override
  Widget build(BuildContext context) {
    /// Main tabs controller.
    TabController ctrl = TabController(
      animationDuration: const Duration(milliseconds: 1000),
      length: 4,
      vsync: this,
    );

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: size.height * (188 / 1080),
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: size.height * (188 / 1080),
          width: size.width * (1180 / 1920),
          child: Padding(
            padding: EdgeInsets.only(top: size.height * (8 / 1080)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Orchid",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * (16 / 1080),
                  ),
                  child: Divider(
                    height: 1,
                    color: AppColors.dividerColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * (42 / 1920),
                          child: Stack(
                            children: [
                              SvgPicture.asset('assets/icons/cart.svg'),
                              Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(
                                  width: size.width * (17 / 1920),
                                  height: size.height * (16 / 1080),
                                  child: const DecoratedBox(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.cartNumberColor,
                                    ),
                                    child: Text(
                                      '2',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: Consts.primaryFont,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: size.width * (27 / 1920)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Корзина покупок - ",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Consts.primaryFont,
                                  color: AppColors.cartNumberColor,
                                ),
                              ),
                              TextSpan(
                                text: '0 р.',
                                style: TextStyle(
                                  fontSize: 15,
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
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: ctrl,
        children: const [
          Landing(),
          Text('asd'),
          Text('asd'),
          Text('asd'),
        ],
      ),
    );
  }
}
