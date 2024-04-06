import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/constants/colors.dart';
import 'package:login_resgistrer/src/config/constants/texts.dart';
import 'package:login_resgistrer/src/presetation/widgets/forget_password_widget.dart';
import 'package:login_resgistrer/src/presetation/widgets/next_button_widget.dart';
import 'package:login_resgistrer/src/presetation/widgets/resgister_button_widget.dart';
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

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Stack(
                  children: [
                    Image.asset('assets/images/img6.png'),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.13, left: 30),
                      child: TText.welcomeBack,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.18, left: 30),
                      child: TText.subTitleWelcome,
                    ),
                  ],
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
                          obscureText: false,
                          validator: (email) {
                            if (email!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          obscureText: true,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
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
                  height: height * 0.19,
                ),
                NextButtonWidget(
                  onPressed: () {
                    if (_formKey != null) {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const ResgisterButtonWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
