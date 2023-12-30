import 'package:flutter/material.dart';
import 'package:ping_bd_app/utils/constants/image_strings.dart';
import 'package:ping_bd_app/utils/constants/sizes.dart';
import 'package:ping_bd_app/utils/constants/texts.dart';
import 'package:ping_bd_app/utils/helpers/helper_functions.dart';

class PLoginHeader extends StatelessWidget {
  const PLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = PHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
            height: 150,
            image:
                AssetImage(dark ? PImages.darkAppLogo : PImages.lightAppLogo)),
        Text(
          PTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: PSizes.sm,
        ),
        Text(
          PTexts.pingBdSlogan,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
