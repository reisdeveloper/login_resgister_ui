import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';
import 'package:login_resgistrer/src/config/constants/texts.dart';

import 'package:login_resgistrer/src/presetation/widgets/text_field_widget.dart';

class SignUpAuthScreen extends StatefulWidget {
  const SignUpAuthScreen({super.key});

  @override
  State<SignUpAuthScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpAuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? validateEmail(String? email) {
    RegExp emailRegex = RegExp('^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if (!isEmailValid) {
      return 'Please enter a valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.20),
        child: Center(
          child: Column(
            children: [
              TText.welcomeBack,
              TText.subTitleWelcome,
              SizedBox(
                height: height * 0.15,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFieldWidget(
                        prefixIcon: const Icon(
                          Icons.email,
                          color: AppColors.grey,
                        ),
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (email) {
                          if (email!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextFieldWidget(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.grey,
                        ),
                        controller: _passwordController,
                        hintText: 'Password',
                        labelText: 'Password',
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
