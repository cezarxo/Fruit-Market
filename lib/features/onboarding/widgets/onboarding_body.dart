import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_app/core/utils/size_config.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';

class OnBoardingBodyView extends StatelessWidget {
  const OnBoardingBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: SizeConfig.defaultSize! * 8.0,
          right: 32,
          child: const Text(
            'Skip',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff898989),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: const CustomGeneralButton(text: 'Next'),
        ),
      ],
    );
  }
}
