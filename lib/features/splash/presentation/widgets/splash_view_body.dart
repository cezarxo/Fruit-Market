import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            'Fruit Market',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
            ),
          ),
        
          Image.asset('assets/images/splash_view_image.png')
        ],
      ),
    );
  }
}
