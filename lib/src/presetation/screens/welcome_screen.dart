import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';
import 'package:login_resgistrer/src/config/constants/texts.dart';
import 'package:login_resgistrer/src/config/theme/icons_theme.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: TIcons.logoutIcon,
          ),
        ],
      ),
      backgroundColor: AppColors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TText.welcomeToHome,
              const SizedBox(
                height: 40,
              ),
              Image.asset('assets/images/img7.png'),
              const SizedBox(
                height: 30,
              ),
              TText.description
            ],
          ),
        ),
      ),
    );
  }
}
