import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';
import 'package:login_resgistrer/src/config/router/router.dart';

class ResgisterButtonWidget extends StatefulWidget {
  const ResgisterButtonWidget({super.key});

  @override
  State<ResgisterButtonWidget> createState() => _ResgisterButtonWidgetState();
}

class _ResgisterButtonWidgetState extends State<ResgisterButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'New Member?',
          style: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, NamedRoutes.sigup);
          },
          child: const Text(
            'Resgister Now',
            style: TextStyle(
              color: AppColors.purple,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ],
    );
  }
}
