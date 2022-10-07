import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';
import 'package:orchid/features/feature/core/router/custom_router.dart';
import 'package:orchid/features/feature/core/router/routes.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1920,
        minWidth: 480,
        defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.autoScale(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1440, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) =>
          CustomRouter.generateRoute(settings, context),
      initialRoute: Routes.home,
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered)) {
              return const Color(0xff388E3C).withOpacity(0.3);
            }
          })),
        ),
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          centerTitle: true,
        ),
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: Colors.black.withOpacity(0.2),
          cursorColor: Colors.black,
          selectionHandleColor: Colors.black,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 48,
            color: const Color(0xff388E3C).withOpacity(0.3),
            fontWeight: FontWeight.w700,
            fontFamily: Consts.primaryFont,
          ),
          headline2: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontFamily: Consts.primaryFont,
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelPadding: EdgeInsets.zero,
          mouseCursor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return SystemMouseCursors.basic;
            } else if (states.contains(MaterialState.hovered)) {
              return SystemMouseCursors.click;
            }
          }),
          unselectedLabelColor: const Color(0xff2E363E),
          unselectedLabelStyle: const TextStyle(
            fontFamily: Consts.primaryFont,
            fontWeight: FontWeight.w700,
            fontSize: 21,
          ),
          labelColor: AppColors.accentColor,
          labelStyle: const TextStyle(
            fontFamily: Consts.primaryFont,
            fontWeight: FontWeight.w700,
            fontSize: 21,
          ),
        ),
      ),
    );
  }
}
