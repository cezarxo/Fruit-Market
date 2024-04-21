import 'package:flutter/material.dart';
import 'package:fruit_app/core/contstants.dart';
import 'package:fruit_app/features/splash/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainColor,
      body: SplashViewBody(),
    );
  }
}