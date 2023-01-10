import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/consts.dart';
import 'package:orchid/features/feature/presentation/widgets/alert_dialogs/close_dialog_button.dart';
import 'package:orchid/features/feature/presentation/widgets/landing/banner/header_banner_button.dart';

class ItemToCardDialog extends StatelessWidget {
  const ItemToCardDialog({
    super.key,
    required this.screenSize,
    required this.itemName,
  });

  final Size screenSize;

  /// TODO: Replace with item model
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      title: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CloseDialogButton(size: screenSize),
            ],
          ),
          SizedBox(height: screenSize.height * (45 / 1080)),
          const Text(
            'Товар добавлен в корзину',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w400,
              fontFamily: Consts.primaryFont,
            ),
          ),
          SizedBox(height: screenSize.height * (24 / 1080)),
        ],
      ),
      content: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 190),
        child: Text(
          itemName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 19,
            fontFamily: Consts.primaryFont,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: EdgeInsets.only(bottom: screenSize.height * (32 / 1080)),
      actions: [
        Column(
          children: [
            BannerButton(
              backgroundColor: const Color(0XffAAB883),
              title: 'Продолжить покупки',
              onPressed: () {},
              foregroundColor: Colors.black,
              width: screenSize.width * (420 / 1920),
              height: screenSize.height * (82 / 1080),
            ),
            const SizedBox(height: 16),
            BannerButton(
              backgroundColor: const Color(0XffAAB883),
              title: 'Оформить заказ',
              onPressed: () {},
              foregroundColor: Colors.black,
              width: screenSize.width * (344 / 1920),
              height: screenSize.height * (82 / 1080),
            ),
          ],
        ),
      ],
    );
  }
}
