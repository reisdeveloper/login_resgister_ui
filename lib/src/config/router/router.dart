import 'package:flutter/material.dart';
import 'package:login_resgistrer/src/presetation/authentication/auth_screens/sigin_auth_screen.dart';

class Routes {
  Map<String, Widget Function(BuildContext context)> routes = {
    NamedRoutes.sigup: (_) => const SingInAuthScreen(),
  };
}

class NamedRoutes {
  static const String sigup = '/sigup';
}
