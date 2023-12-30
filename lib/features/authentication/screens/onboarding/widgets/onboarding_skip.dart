import 'package:flutter/material.dart';
import 'package:ping_bd_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:ping_bd_app/utils/constants/sizes.dart';
import 'package:ping_bd_app/utils/constants/texts.dart';
import 'package:ping_bd_app/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: PDeviceUtils.getAppBarHeight(),
        right: PSizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text(PTexts.skip),
        ));
  }
}
