import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/presetation/authentication/auth_screens/number_auth_screen.dart';
import 'package:login_resgistrer/src/presetation/authentication/auth_screens/sigin_auth_screen.dart';
import 'package:login_resgistrer/src/presetation/authentication/auth_screens/sigup_auth_screen.dart';
import 'package:login_resgistrer/src/presetation/screens/welcome_screen.dart';

class Routes {
  static Map<String, Widget Function(BuildContext context)> routes = {
    NamedRoutes.sigin: (_) => const SingInAuthScreen(),
    NamedRoutes.sigup: (_) => const SignUpAuthScreen(),
    NamedRoutes.forgot: (_) => const ResetPasswordAuth(),
    NamedRoutes.welcome: (_) => const WelcomeScreen(),
  };
}

class NamedRoutes {
  static const String sigin = '/sigin';
  static const String sigup = '/sigup';
  static const String welcome = '/welcome';
  static const String forgot = '/forgot';
}
