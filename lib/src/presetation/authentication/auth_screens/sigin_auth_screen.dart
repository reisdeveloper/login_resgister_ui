import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';
import 'package:login_resgistrer/src/config/constants/texts.dart';
import 'package:login_resgistrer/src/presetation/widgets/forget_password_widget.dart';
import 'package:login_resgistrer/src/presetation/widgets/next_button_widget.dart';

import 'package:login_resgistrer/src/presetation/widgets/text_field_widget.dart';

class SingInAuthScreen extends StatefulWidget {
  const SingInAuthScreen({super.key});

  @override
  State<SingInAuthScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SingInAuthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final bool clickCheckBox = false;

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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: height * 0.20,
            ),
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
                            validator: (password) {
                              if (password!.isEmpty) {
                                return 'Please enter your password';
                              } else if (password.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: clickCheckBox,
                                    onChanged: (value) {},
                                    side: const BorderSide(
                                      style: BorderStyle.solid,
                                    ),
                                  ),
                                  const Text(
                                    'Remember me',
                                    style: TextStyle(
                                      color: AppColors.black,
                                    ),
                                  ),
                                ],
                              ),
                              const ForgetPasswordWidget(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.10,
                  ),
                  const NextButtonWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
