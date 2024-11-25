import 'package:filllo_mobile/views/screens/screenlock.dart';
import '../utils/utils.dart';
import 'package:filllo_mobile/views/widgets/error_toast.dart';
import 'package:filllo_mobile/views/widgets/orange_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<FocusNode> focusNodes = [];
    List<TextEditingController> controllers = [];
    for (var i = 0; i < 4; i++) {
      focusNodes.add(FocusNode());
      controllers.add(TextEditingController());
    }
    return Scaffold(
        // backgroundColor: Colors.black,
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.instance().scaleWidth(8),
                vertical: SizeConfig.instance().scaleHeight(8)),
            child: Row(
              children: [
                const Gap(
                  8,
                ),
                // GestureDetector(
                //     onTap: () => Navigator.of(context).pop(),
                //     child: const Icon(
                //       Icons.arrow_back_outlined,
                //       color: Colors.white,
                //     )),
                const Expanded(child: Gap(4)),
                Text(
                  "Verification",
                  style: AppTypography().h5.copyWith(color: Colors.white),
                ),
                const Expanded(child: Gap(4)),
              ],
            ),
          ),
          Gap(SizeConfig.instance().scaleHeight(32)),
          Expanded(
            child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.instance().scaleWidth(16)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(SizeConfig.instance().scaleHeight(16)),
                      Text(
                        "Verify\n Your New Account",
                        style: AppTypography().h4,
                        textAlign: TextAlign.center,
                      ),
                      Gap(SizeConfig.instance().scaleHeight(16)),
                      Text(
                        "Please enter 4- digit code",
                        textAlign: TextAlign.center,
                        style: AppTypography()
                            .bodyLargeM
                            .copyWith(color: Colors.black26),
                      ),
                      Gap(SizeConfig.instance().scaleHeight(32)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: SizeConfig.instance().scaleHeight(56),
                            width: SizeConfig.instance().scaleWidth(56),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.4))),
                            child: TextField(
                              focusNode: focusNodes[0],
                              controller: controllers[0],
                              textAlign: TextAlign.center,
                              style: AppTypography().bodyLargeSB,
                              maxLength: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  focusNodes[1].requestFocus();
                                }
                              },
                              onEditingComplete: () {
                                focusNodes[1].requestFocus();
                              },
                              decoration: const InputDecoration(
                                  border: InputBorder.none, counterText: ""),
                            ),
                          ),
                          Gap(SizeConfig.instance().scaleWidth(16)),
                          Container(
                            height: SizeConfig.instance().scaleHeight(56),
                            width: SizeConfig.instance().scaleWidth(56),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.4))),
                            child: TextField(
                              focusNode: focusNodes[1],
                              controller: controllers[1],
                              textAlign: TextAlign.center,
                              style: AppTypography().bodyLargeSB,
                              maxLength: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  focusNodes[2].requestFocus();
                                }
                              },
                              decoration: const InputDecoration(
                                  border: InputBorder.none, counterText: ""),
                            ),
                          ),
                          Gap(SizeConfig.instance().scaleWidth(16)),
                          Container(
                            height: SizeConfig.instance().scaleHeight(56),
                            width: SizeConfig.instance().scaleWidth(56),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.4))),
                            child: TextField(
                              focusNode: focusNodes[2],
                              controller: controllers[2],
                              textAlign: TextAlign.center,
                              style: AppTypography().bodyLargeSB,
                              maxLength: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  focusNodes[3].requestFocus();
                                }
                              },
                              decoration: const InputDecoration(
                                  border: InputBorder.none, counterText: ""),
                            ),
                          ),
                          Gap(SizeConfig.instance().scaleWidth(16)),
                          Container(
                            height: SizeConfig.instance().scaleHeight(56),
                            width: SizeConfig.instance().scaleWidth(56),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.4))),
                            child: TextField(
                              focusNode: focusNodes[3],
                              controller: controllers[3],
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: AppTypography().bodyLargeSB,
                              onChanged: (value) {
                                focusNodes[3].unfocus();
                              },
                              decoration: const InputDecoration(
                                  border: InputBorder.none, counterText: ""),
                            ),
                          ),
                        ],
                      ),
                      Gap(SizeConfig.instance().scaleHeight(50)),
                      Text(
                        "Didn't receive the code?",
                        style: AppTypography()
                            .bodyMediumM
                            .copyWith(color: Colors.black26),
                      ),
                      Gap(SizeConfig.instance().scaleHeight(16)),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Resend in  ",
                            style: AppTypography().bodyLargeM),
                        TextSpan(
                            text: "00:45",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                errorToast("Cannot resend now");
                              },
                            style: AppTypography()
                                .bodyLargeM
                                .copyWith(color: AppColours.brightOrange)),
                      ])),
                      const AspectRatio(aspectRatio: 1.45),
                      OrangeButton(
                          text: "Continue",
                          onTap: () {
                            if (controllers[0].text.isEmpty ||
                                controllers[1].text.isEmpty ||
                                controllers[2].text.isEmpty ||
                                controllers[3].text.isEmpty) {
                              return errorToast("Enter verification code");
                            } else {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ScreenlockScreen(),
                              ));
                            }
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
