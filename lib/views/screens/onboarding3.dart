import 'package:filllo_mobile/views/screens/login.dart';
import 'package:filllo_mobile/views/screens/signup.dart';
import 'package:filllo_mobile/views/utils/mediaquery.dart';
import 'package:filllo_mobile/views/utils/typography.dart';
import 'package:filllo_mobile/views/widgets/orange_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
            child: Column(
              children: [
                const Expanded(child: Gap(8)),
                const CircleAvatar(
                  radius: 152 / 2,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    "assets/images/wallet-filllo.png",
                  ),
                ),
                Gap(SizeConfig.scaleHeight(16)),
                Text(
                  "Filllo Pay",
                  style: AppTypography.h4.copyWith(color: Colors.white),
                ),
                const Expanded(child: Gap(8)),
                OrangeButton(
                  text: "Log In",
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  )),
                ),
                Gap(SizeConfig.scaleHeight(8)),
                OrangeButton(
                  text: "Create New Account",
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  )),
                ),
                Gap(SizeConfig.scaleHeight(16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
