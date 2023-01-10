import 'package:flutter/material.dart';
import 'package:orchid/features/feature/common/consts.dart';
import 'package:orchid/features/feature/presentation/widgets/alert_dialogs/contact_dialog_textfield.dart';
import 'package:orchid/features/feature/presentation/widgets/landing/banner/header_banner_button.dart';

import 'close_dialog_button.dart';

class ContactDialog extends StatefulWidget {
  const ContactDialog({super.key});

  @override
  State<ContactDialog> createState() => _ContactDialogState();
}

class _ContactDialogState extends State<ContactDialog> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(
        size.width * (100.0 / 1920),
        0,
        size.width * (100.0 / 1920),
        size.height * (16 / 1080),
      ),
      scrollable: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      titlePadding: EdgeInsets.only(
          top: size.height * (50 / 1080), bottom: size.height * (16 / 1080)),
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * (100.0 / 1920)),
        child: Wrap(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CloseDialogButton(size: size),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Обратный звонок',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    fontFamily: Consts.primaryFont,
                  ),
                ),
                SizedBox(height: size.height * (10 / 1080)),
                const Text(
                  'Заполните форму, и мы перезвоним Вам сами',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    fontFamily: Consts.primaryFont,
                  ),
                ),
                SizedBox(height: size.height * (32 / 1080)),
              ],
            ),
          ],
        ),
      ),
      content: SingleChildScrollView(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ContactTextField(
                screenSize: size,
                title: 'Ваше имя',
                ctrl: nameCtrl,
                type: TextInputType.name,
                hintText: 'введите имя и фамилию',
              ),
              SizedBox(height: size.height * (32 / 1080)),
              ContactTextField(
                screenSize: size,
                ctrl: phoneCtrl,
                type: TextInputType.phone,
                title: 'Номер телефона',
                hintText: 'введите номер телефона в международном формате',
              ),
              const SizedBox(height: 8),
              Text(
                'Оставляя заявку, вы соглашаетесь на обработку персональных данных',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: Consts.primaryFont,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff000000).withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
      buttonPadding: EdgeInsets.zero,
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.only(bottom: 32),
      actions: [
        BannerButton(
          backgroundColor: const Color(0XffAAB883),
          title: 'Заказать звонок',
          onPressed: () {},
          foregroundColor: Colors.black,
          width: size.width * (343 / 1920),
          height: size.height * (82 / 1080),
        ),
      ],
    );
  }
}
