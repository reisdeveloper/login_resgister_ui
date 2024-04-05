import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';

class TTextStyle {
  TTextStyle._();

  static const TextStyle description = TextStyle(
    fontFamily: 'Roboto Slab',
    color: AppColors.grey,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    fontStyle: FontStyle.italic,
  );
  static const TextStyle welcomeToHome = TextStyle(
    fontFamily: 'Roboto Slab',
    color: AppColors.black,
    fontWeight: FontWeight.w400,
    fontSize: 30,
    fontStyle: FontStyle.italic,
  );
}
