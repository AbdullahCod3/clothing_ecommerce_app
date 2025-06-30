import 'package:clothing_ecommerce_app/core/configs/theme/app_theme.dart';
import 'package:clothing_ecommerce_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:clothing_ecommerce_app/presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const ClothingApp());
}

class ClothingApp extends StatelessWidget {
  const ClothingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        home: const SplashPage(),
      ),
    );
  }
}
