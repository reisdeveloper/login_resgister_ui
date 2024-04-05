import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const Scaffold(),
    );
  }
}
