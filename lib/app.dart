import 'package:flutter/material.dart';
import 'package:my_candy/front/routes/router.dart';
import 'package:my_candy/front/theme/theme.dart';

class MyCandyApp extends StatefulWidget {
  const MyCandyApp({super.key});

  @override
  State<MyCandyApp> createState() => _MyCandyAppState();
}

class _MyCandyAppState extends State<MyCandyApp> {

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routerConfig: _router.config(),
    );
  }
}