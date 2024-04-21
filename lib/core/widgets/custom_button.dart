import 'package:flutter/material.dart';
import 'package:fruit_app/core/contstants.dart';
import 'package:fruit_app/core/utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key,  this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
        child: Text(
          text!,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xffffffff),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
