import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping_bd_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:ping_bd_app/utils/constants/image_strings.dart';
import 'package:ping_bd_app/utils/constants/texts.dart';

import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: PImages.onBoardingImage1,
                title: PTexts.onBoardingTitle1,
                subTitle: PTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: PImages.onBoardingImage2,
                title: PTexts.onBoardingTitle2,
                subTitle: PTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: PImages.onBoardingImage3,
                title: PTexts.onBoardingTitle3,
                subTitle: PTexts.onBoardingSubTitle3,
              )
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          ///Dot NAvigation Smooth Page Navigation
          const OnBoardingDotNavigation(),

          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
