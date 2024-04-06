import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';
import 'package:login_resgistrer/src/config/router/router.dart';

class ForgetPasswordWidget extends StatefulWidget {
  const ForgetPasswordWidget({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordWidget> createState() => _ForgetPasswordWidgetState();
}

class _ForgetPasswordWidgetState extends State<ForgetPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(NamedRoutes.forgot);
      },
      child: const Text(
        'Forget password?',
        style: TextStyle(
          color: AppColors.purple,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
