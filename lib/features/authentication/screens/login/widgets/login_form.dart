import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ping_bd_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ping_bd_app/utils/constants/sizes.dart';
import 'package:ping_bd_app/utils/constants/texts.dart';

class PLoginForm extends StatelessWidget {
  const PLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.direct_right,
                ),
                labelText: PTexts.email),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                labelText: PTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields / 2,
          ),

          /// Remember me & Forget Password
          ///
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(PTexts.rememberMe)
                ],
              ),

              ///Forget Password

              TextButton(
                  onPressed: () => Get.to(ForgetPassword()),
                  child: Text(PTexts.forgetPassword))
            ],
          ),
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),

          /// Sign In  Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(PTexts.signIn),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),

          /// Create Account  Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(PTexts.createAccount),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwSections,
          ),
        ],
      ),
    ));
  }
}
