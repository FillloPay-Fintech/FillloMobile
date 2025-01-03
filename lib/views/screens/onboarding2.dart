import 'package:filllo_mobile/view_model/onboarding_controller.dart';
import 'package:filllo_mobile/views/screens/onboarding3.dart';

import '../utils/utils.dart';
import 'package:filllo_mobile/views/widgets/black_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingProvider =
        Provider.of<OnboardingController>(context);

    Color getIndicatorColor() {
      switch (onboardingProvider.index) {
        case 0:
          return AppColours.blueFlower;
        case 1:
          return AppColours.brightOrange;
        default:
          return AppColours.galacticFederation;
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.instance.scaleHeight(37),
                bottom: SizeConfig.instance.scaleHeight(10),
              ),
              child: SmoothPageIndicator(
                effect: ScrollingDotsEffect(
                  activeDotColor: getIndicatorColor(),
                  dotColor: getIndicatorColor(),
                  activeStrokeWidth: 2.6,
                  activeDotScale: 2,
                  fixedCenter: true,
                  maxVisibleDots: 5,
                  radius: 10,
                  spacing: 15,
                  dotHeight: 6,
                  dotWidth: 6,
                ),
                controller: onboardingProvider.pageController,
                count: onboardingProvider.count,
              ),
            ),
            Expanded(
              child: PageView(
                controller: onboardingProvider.pageController,
                onPageChanged: (index) {
                  onboardingProvider.setIndex(index);
                },
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            child: Container(
                              color: getIndicatorColor(),
                              width: double.maxFinite,
                              child: Column(
                                children: [
                                  Gap(SizeConfig.instance.scaleHeight(86)),
                                  Image.asset("assets/images/card-filllo.png"),
                                  Gap(SizeConfig.instance.scaleHeight(42)),
                                  Text(
                                    "Keep track on your \n Account each day",
                                    style: AppTypography()
                                        .h4
                                        .copyWith(color: Colors.white),
                                  ),
                                  Gap(SizeConfig.instance.scaleHeight(20)),
                                  Text(
                                    "It helps you to manage\n spending money.",
                                    style: AppTypography().bodyMediumM.copyWith(
                                        color: Colors.white,
                                        fontSize:
                                            SizeConfig.instance.scaleText(17)),
                                    textAlign: TextAlign.center,
                                  ),
                                  const Expanded(child: Gap(4)),
                                  BlackButton(
                                    text: "Next",
                                    onTap: () => onboardingProvider
                                        .pageController
                                        .nextPage(
                                            duration: Durations.long3,
                                            curve: Easing.standard),
                                  ),
                                  Gap(SizeConfig.instance.scaleHeight(35)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            child: Container(
                              color: getIndicatorColor(),
                              width: double.maxFinite,
                              child: Column(
                                children: [
                                  Gap(SizeConfig.instance.scaleHeight(86)),
                                  Image.asset("assets/images/bill-filllo.png"),
                                  Gap(SizeConfig.instance.scaleHeight(42)),
                                  Text(
                                    "Keep an eye on your \n Account statement",
                                    style: AppTypography()
                                        .h4
                                        .copyWith(color: Colors.white),
                                  ),
                                  Gap(SizeConfig.instance.scaleHeight(20)),
                                  Text(
                                    "Always try to check balance statements\n We send statements every Month.",
                                    style: AppTypography()
                                        .bodyMediumM
                                        .copyWith(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  const Expanded(child: Gap(4)),
                                  BlackButton(
                                    text: "Next",
                                    onTap: () => onboardingProvider
                                        .pageController
                                        .nextPage(
                                            duration: Durations.long3,
                                            curve: Easing.standard),
                                  ),
                                  Gap(SizeConfig.instance.scaleHeight(35)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            child: Container(
                              color: getIndicatorColor(),
                              width: double.maxFinite,
                              child: Column(
                                children: [
                                  Gap(SizeConfig.instance.scaleHeight(86)),
                                  Image.asset(
                                      "assets/images/wallet-sleep-filllo.png"),
                                  Gap(SizeConfig.instance.scaleHeight(42)),
                                  Text(
                                    "Always Try to Save\n Money and Time.",
                                    style: AppTypography()
                                        .h4
                                        .copyWith(color: Colors.white),
                                  ),
                                  Gap(SizeConfig.instance.scaleHeight(20)),
                                  Text(
                                    "Filllo Pay helps you with your\n money and receive payment faster",
                                    style: AppTypography()
                                        .bodyMediumM
                                        .copyWith(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                  const Expanded(child: Gap(4)),
                                  BlackButton(
                                    text: "Next",
                                    onTap: () => Navigator.of(context)
                                        .pushAndRemoveUntil(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const Onboarding3Screen(),
                                      ),
                                      (route) => false,
                                    ),
                                  ),
                                  Gap(SizeConfig.instance.scaleHeight(35)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
