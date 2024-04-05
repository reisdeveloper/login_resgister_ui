import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:login_resgistrer/app.dart';
import 'package:login_resgistrer/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}
