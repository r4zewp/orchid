import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/consts.dart';

class BannerButton extends StatelessWidget {
  const BannerButton({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.onPressed,
    required this.foregroundColor,
  });
  final String title;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      width: 268,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          backgroundColor: backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: foregroundColor,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: Consts.primaryFont,
          ),
        ),
      ),
    );
  }
}
