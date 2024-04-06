import 'package:flutter/material.dart';

import 'package:login_resgistrer/src/config/constants/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final String obscuringCharacter;
  final String? Function(String?)? validator;
  final int? minLines;
  final int? maxLines;
  final bool obscureText;
  final TextInputType keyboardType;
  final AutovalidateMode? autovalidateMode;

  const TextFieldWidget({
    Key? key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    required this.controller,
    this.obscuringCharacter = '•',
    this.validator,
    this.minLines,
    this.maxLines = 1,
    this.obscureText = true,
    required this.keyboardType,
    this.autovalidateMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(
            width: 2,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
