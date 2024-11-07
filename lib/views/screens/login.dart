import 'package:filllo_mobile/views/utils/colours.dart';
import 'package:filllo_mobile/views/utils/mediaquery.dart';
import 'package:filllo_mobile/views/utils/typography.dart';
import 'package:filllo_mobile/views/widgets/orange_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.scaleWidth(8),
                vertical: SizeConfig.scaleHeight(8)),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    )),
                const Expanded(child: Gap(4)),
                Text(
                  "Log In",
                  style: AppTypography.h5.copyWith(color: Colors.white),
                ),
                const Expanded(child: Gap(4)),
              ],
            ),
          ),
          Gap(SizeConfig.scaleHeight(32)),
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
                padding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(16)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Gap(SizeConfig.scaleHeight(16)),
                      Text(
                        "Welcome\n Log In To Enter",
                        style: AppTypography.h4,
                        textAlign: TextAlign.center,
                      ),
                      Gap(SizeConfig.scaleHeight(16)),
                      Text(
                        "Please provide\nfollowing details for your new account",
                        textAlign: TextAlign.center,
                        style: AppTypography.bodyLargeM
                            .copyWith(color: Colors.black26),
                      ),
                      Gap(SizeConfig.scaleHeight(32)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email Address",
                          style: AppTypography.bodyLargeM
                              .copyWith(color: Colors.black38),
                        ),
                      ),
                      Gap(SizeConfig.scaleHeight(8)),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "filllo@gmail.com",
                          hintStyle: AppTypography.bodyMediumM.copyWith(
                              color: Colors.black38, letterSpacing: 1.1),
                          filled: true,
                          fillColor: const Color(0xFFF9F9FF),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                          ),
                        ),
                      ),
                      Gap(SizeConfig.scaleHeight(16)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: AppTypography.bodyLargeM
                              .copyWith(color: Colors.black38),
                        ),
                      ),
                      Gap(SizeConfig.scaleHeight(8)),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.black38,
                          ),
                          hintText: "* * * * * *",
                          hintStyle: AppTypography.bodyMediumM
                              .copyWith(color: Colors.black38),
                          filled: true,
                          fillColor: const Color(0xFFF9F9FF),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),
                          ),
                        ),
                      ),
                      Gap(SizeConfig.scaleHeight(24)),
                      Text(
                        "Forget Password?",
                        style: AppTypography.bodyMediumM
                            .copyWith(color: Colors.black38),
                      ),
                      Gap(SizeConfig.scaleHeight(16)),
                      Text(
                        "or",
                        style: AppTypography.bodySmallM
                            .copyWith(color: Colors.black38),
                      ),
                      Gap(SizeConfig.scaleHeight(8)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              radius: 32,
                              backgroundColor: AppColours.dark,
                              child: Icon(
                                size: 32,
                                Icons.apple_outlined,
                                color: Colors.white,
                              )),
                          Gap(SizeConfig.scaleWidth(8)),
                          CircleAvatar(
                              radius: 32,
                              backgroundColor: AppColours.dark,
                              child: Icon(
                                size: 32,
                                Icons.facebook_outlined,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      Gap(SizeConfig.scaleHeight(52)),
                      OrangeButton(text: "Log In", onTap: () {}),
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
