import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ping_bd_app/features/authentication/controllers/controllers.onboarding/onboarding_controller.dart';
import 'package:ping_bd_app/utils/constants/colors.dart';
import 'package:ping_bd_app/utils/constants/sizes.dart';
import 'package:ping_bd_app/utils/device/device_utility.dart';
import 'package:ping_bd_app/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);

    return Positioned(
        right: PSizes.defaultSpace,
        bottom: PDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () => OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? PColors.primary : PColors.dark),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
