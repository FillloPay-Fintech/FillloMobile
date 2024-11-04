import 'package:filllo_mobile/views/screens/onboarding2.dart';
import 'package:filllo_mobile/views/utils/typography.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5)).then(
      (value) => Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => const Onboarding2Screen(),
        ),
        (route) => false,
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Expanded(child: Gap(8)),
              const CircleAvatar(
                radius: 152 / 2,
                backgroundImage: AssetImage(
                  "assets/images/wallet-filllo.png",
                ),
              ),
              const Gap(16),
              Text(
                "Filllo Pay",
                style: AppTypography.h4.copyWith(color: Colors.white),
              ),
              const Expanded(child: Gap(8)),
              Text(
                "Powered by Filllo",
                style: AppTypography.bodySmallSB.copyWith(color: Colors.white),
              ),
              const Gap(8),
            ],
          ),
        ),
      ),
    );
  }
}
