import 'package:fitness_app/core/route/router.dart';
import 'package:fitness_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
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
