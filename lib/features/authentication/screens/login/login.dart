import 'package:flutter/material.dart';
import 'package:ping_bd_app/common/styles/spacing_styles.dart';
import 'package:ping_bd_app/common/widgets/form_divider.dart';
import 'package:ping_bd_app/common/widgets/social_buttons.dart';
import 'package:ping_bd_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ping_bd_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ping_bd_app/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: PSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Logo Title, Sub Title
              PLoginHeader(),

              /// Form
              PLoginForm(),

              ///Divider
              FormDivider(),

              SizedBox(
                height: PSizes.spaceBtwSections,
              ),

              /// Footer

              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
