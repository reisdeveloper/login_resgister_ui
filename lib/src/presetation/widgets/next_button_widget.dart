import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';

class NextButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  const NextButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final double widht = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.purple,
        foregroundColor: AppColors.white,
        minimumSize: Size(
          widht * 0.80,
          height * 0.060,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      child: const Text(
        'Next >',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 25,
        ),
      ),
    );
  }
}
