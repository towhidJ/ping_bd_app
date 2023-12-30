import 'package:flutter/material.dart';
import 'package:ping_bd_app/utils/constants/colors.dart';
import 'package:ping_bd_app/utils/constants/image_strings.dart';
import 'package:ping_bd_app/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: PColors.grey),
              borderRadius: BorderRadius.circular(180)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: PSizes.iconMd,
                  height: PSizes.iconMd,
                  image: AssetImage(PImages.google))),
        ),
        const SizedBox(
          width: PSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: PColors.grey),
              borderRadius: BorderRadius.circular(180)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: PSizes.iconMd,
                  height: PSizes.iconMd,
                  image: AssetImage(PImages.facebook))),
        )
      ],
    );
  }
}
