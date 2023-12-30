import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ping_bd_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ping_bd_app/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: PAppTheme.lightTheme,
      darkTheme: PAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: OnBoarding(),
    );
  }
}
