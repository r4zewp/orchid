import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/colors.dart';
import 'package:orchid/features/feature/common/consts.dart';

class CatalogButton extends StatefulWidget {
  const CatalogButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  State<CatalogButton> createState() => _CatalogButtonState();
}

class _CatalogButtonState extends State<CatalogButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
        backgroundColor: AppColors.activeButtonColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          Consts.catalogOrderButton,
          style: TextStyle(
            fontSize: 18,
            fontFamily: Consts.primaryFont,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
