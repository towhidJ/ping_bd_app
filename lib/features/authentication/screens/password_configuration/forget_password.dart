import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ping_bd_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ping_bd_app/utils/constants/sizes.dart';
import 'package:ping_bd_app/utils/constants/texts.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(PTexts.forgetPassword),
      ),
      body: Padding(
        padding: EdgeInsets.all(PSizes.defaultSpace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          /// Heading

          Text(
            PTexts.forgetPassword,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
          Text(
            PTexts.forgetPasswordSubTitle,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(
            height: PSizes.spaceBtwSections * 2,
          ),

          /// Text Field

          TextFormField(
            decoration: InputDecoration(
                labelText: PTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),
          ),
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),

          /// submit Button

          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.off(ResetPassword()),
                  child: Text(PTexts.submit)))
        ]),
      ),
    );
  }
}
