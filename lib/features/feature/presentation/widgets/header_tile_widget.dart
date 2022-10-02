import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:orchid/features/feature/common/consts.dart';

class HeaderInfoTile extends StatelessWidget {
  const HeaderInfoTile({
    Key? key,
    required this.size,
    required this.title,
    required this.iconUrl,
    this.subtitle,
  }) : super(key: key);

  final Size size;
  final String title;
  final String iconUrl;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          iconUrl,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: size.width * (8 / 1080),
        ),
        SizedBox(
          width: size.width * (169 / 1920),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SelectableText(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: subtitle == null
                            ? FontWeight.w400
                            : FontWeight.w700,
                        color: Colors.black,
                        fontFamily: Consts.primaryFont,
                      ),
                    ),
                  ),
                ],
              ),
              if (subtitle != null)
                SelectableText(
                  subtitle!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    fontFamily: Consts.primaryFont,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
