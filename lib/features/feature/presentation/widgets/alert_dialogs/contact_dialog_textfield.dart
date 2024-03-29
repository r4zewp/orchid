import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orchid/features/feature/common/consts.dart';

class ContactTextField extends StatefulWidget {
  const ContactTextField({
    super.key,
    required this.ctrl,
    required this.type,
    required this.title,
    required this.screenSize,
    required this.hintText,
    required this.formatters,
    required this.onChanged,
    required this.errorText,
  });

  final TextEditingController ctrl;
  final TextInputType type;
  final String title;
  final String hintText;
  final String errorText;
  final Size screenSize;
  final List<TextInputFormatter> formatters;
  final Function(String value) onChanged;

  @override
  State<ContactTextField> createState() => _ContactTextFieldState();
}

class _ContactTextFieldState extends State<ContactTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: Consts.primaryFont,
          ),
        ),
        SizedBox(height: widget.screenSize.height * (8 / 1080)),
        TextField(
          onChanged: widget.onChanged,
          inputFormatters: widget.formatters,
          decoration: InputDecoration(
            errorText: widget.errorText,
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(
                color: Colors.black,
                width: 1,
              ),
            ),
            errorBorder: widget.errorText.isNotEmpty
                ? const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  )
                : const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
            focusedErrorBorder: widget.errorText.isNotEmpty
                ? const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  )
                : const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 32,
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontFamily: Consts.primaryFont,
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.5),
              overflow: TextOverflow.fade,
            ),
          ),
          controller: widget.ctrl,
          keyboardType: widget.type,
          style: const TextStyle(
            fontFamily: Consts.primaryFont,
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
