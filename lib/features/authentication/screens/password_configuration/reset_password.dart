import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping_bd_app/features/authentication/screens/login/login.dart';
import 'package:ping_bd_app/utils/constants/image_strings.dart';
import 'package:ping_bd_app/utils/constants/sizes.dart';
import 'package:ping_bd_app/utils/constants/texts.dart';
import 'package:ping_bd_app/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(PSizes.defaultSpace),
        child: Column(
          children: [
            ///Image Width 60% of screen
            Image(
              image: const AssetImage(PImages.deliveredEmailIllustration),
              width: PHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(
              height: PSizes.spaceBtwSections,
            ),

            Text(
              PTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            Text(
              PTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: PSizes.spaceBtwSections * 2,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(LoginScreen()),
                    child: Text(PTexts.done))),

            const SizedBox(
              height: PSizes.spaceBtwItems,
            ),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: Text(PTexts.resendEmail))),
          ],
        ),
      )),
    );
  }
}
