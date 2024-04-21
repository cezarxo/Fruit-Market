import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../../core/contstants.dart';

class CustomDotsIndicator extends StatelessWidget {
  final double? dotIndex;
  const CustomDotsIndicator({super.key, required this.dotIndex});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex!.toInt(),
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(
            color: kMainColor,
          ),
        ),
      ),
    );
  }
}
