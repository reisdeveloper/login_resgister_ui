import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/config/router/router.dart';
import 'package:login_resgistrer/src/config/theme/app_theme.dart';
import 'package:login_resgistrer/src/presetation/authentication/auth_screens/sigin_auth_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      routes: Routes.routes,
      home: const SingInAuthScreen(),
    );
  }
}
