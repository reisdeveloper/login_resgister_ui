import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final String obscuringCharacter = '•';
  final String? Function(String?)? validator;
  final int? minLines;
  final int? maxLines;
  final bool obscureText = false;
  final TextInputType keyboardType;

  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.keyboardType,
    this.validator,
    this.minLines,
    this.maxLines,
    this.hintText,
    this.labelText,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        fillColor: Colors.blue,
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
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
