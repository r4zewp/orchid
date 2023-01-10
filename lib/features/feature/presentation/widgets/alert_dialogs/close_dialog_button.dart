import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CloseDialogButton extends StatelessWidget {
  const CloseDialogButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {
        Navigator.of(context).pop();
      },
      child: SvgPicture.asset(
        'icons/xcross.svg',
        color: Colors.black,
        width: size.width * (28 / 1920),
        height: size.height * (28 / 1080),
      ),
    );
  }
}
