import 'package:filllo_mobile/controllers/onboarding_controller.dart';
import 'package:filllo_mobile/controllers/screenlock_controller.dart';
import 'package:filllo_mobile/controllers/sign_up_controller.dart';
import 'package:filllo_mobile/views/screens/onboarding1.dart';

import './views/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FillloMobile());
}

class FillloMobile extends StatelessWidget {
  const FillloMobile({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => OnboardingController(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ScreenlockController(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColours.dark,
          fontFamily: "SF_DISPLAY_PRO",
        ),
        home: const Onboarding1Screen(),
      ),
    );
  }
}
