import 'package:flutter/material.dart';
import 'package:fruit_app/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF69A03A),
      body: SplashViewBody(),
    );
  }
}