import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app/core/route/router.dart';
import 'package:fitness_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: lightTheme,
    );
  }
}
