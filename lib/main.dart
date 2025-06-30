import 'package:clothing_ecommerce_app/core/configs/theme/app_theme.dart';
import 'package:clothing_ecommerce_app/presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClothingApp());
}

class ClothingApp extends StatelessWidget {
  const ClothingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
