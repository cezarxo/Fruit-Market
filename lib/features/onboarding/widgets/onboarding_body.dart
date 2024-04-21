import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_app/core/utils/size_config.dart';
import 'package:fruit_app/core/widgets/custom_button.dart';
import 'package:fruit_app/features/onboarding/widgets/custom_page_view.dart';
import 'package:get/get.dart';
import '../../auth/presentation/pages/login/login_view.dart';
import 'custom_indicator.dart';

class OnBoardingBodyView extends StatefulWidget {
  const OnBoardingBodyView({super.key});

  @override
  State<OnBoardingBodyView> createState() => _OnBoardingBodyViewState();
}

class _OnBoardingBodyViewState extends State<OnBoardingBodyView> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(pageController: pageController!),
        Positioned(
          bottom: SizeConfig.defaultSize! * 24.0,
          left: 0,
          right: 0,
          child: CustomDotsIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 8.0,
            right: 32,
            child: GestureDetector(
              onTap: () {
                Get.to(() => const LoginView(),
                    transition: Transition.leftToRight,
                    duration: const Duration(milliseconds: 500));
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Positioned(
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => const LoginView(),
                      transition: Transition.leftToRight,
                      duration: const Duration(milliseconds: 500));
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? "Get Started" : 'Next')
                  : 'Next'),
        ),
      ],
    );
  }
}
