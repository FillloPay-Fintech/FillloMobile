import 'package:filllo_mobile/views/screens/verifications.dart';
import '../utils/utils.dart';
import 'package:filllo_mobile/views/widgets/error_toast.dart';
import 'package:filllo_mobile/views/widgets/orange_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> signpFormKey = GlobalKey<FormState>();
    return Scaffold(
        // backgroundColor: Colors.black,
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.instance.scaleWidth(8),
                vertical: SizeConfig.instance.scaleHeight(8)),
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
                  "Create Account",
                  style: AppTypography().h5.copyWith(color: Colors.white),
                ),
                const Expanded(child: Gap(4)),
              ],
            ),
          ),
          Gap(SizeConfig.instance.scaleHeight(32)),
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
                    horizontal: SizeConfig.instance.scaleWidth(16)),
                child: SingleChildScrollView(
                  child: Form(
                    key: signpFormKey,
                    child: Column(
                      children: [
                        Gap(SizeConfig.instance.scaleHeight(16)),
                        Text(
                          "Create New Account",
                          style: AppTypography().h4,
                          textAlign: TextAlign.center,
                        ),
                        Gap(SizeConfig.instance.scaleHeight(16)),
                        Text(
                          "Please provide\nfollowing information here",
                          textAlign: TextAlign.center,
                          style: AppTypography()
                              .bodyLargeM
                              .copyWith(color: Colors.black26),
                        ),
                        Gap(SizeConfig.instance.scaleHeight(32)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Phone Number",
                            style: AppTypography()
                                .bodyLargeM
                                .copyWith(color: Colors.black38),
                          ),
                        ),
                        Gap(SizeConfig.instance.scaleHeight(8)),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "+1 236098678",
                            hintStyle: AppTypography().bodyMediumM.copyWith(
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
                          keyboardType: TextInputType.phone,
                        ),
                        Gap(SizeConfig.instance.scaleHeight(16)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email Address",
                            style: AppTypography()
                                .bodyLargeM
                                .copyWith(color: Colors.black38),
                          ),
                        ),
                        Gap(SizeConfig.instance.scaleHeight(8)),
                        TextFormField(
                            decoration: InputDecoration(
                              hintText: "filllo@gmail.com",
                              hintStyle: AppTypography().bodyMediumM.copyWith(
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
                            keyboardType: TextInputType.emailAddress),
                        Gap(SizeConfig.instance.scaleHeight(16)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Password",
                            style: AppTypography()
                                .bodyLargeM
                                .copyWith(color: Colors.black38),
                          ),
                        ),
                        Gap(SizeConfig.instance.scaleHeight(8)),
                        TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.remove_red_eye_rounded,
                              color: Colors.black38,
                            ),
                            hintText: "* * * * * *",
                            hintStyle: AppTypography()
                                .bodyMediumM
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
                        Gap(SizeConfig.instance.scaleHeight(16)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Confirm Password",
                            style: AppTypography()
                                .bodyLargeM
                                .copyWith(color: Colors.black38),
                          ),
                        ),
                        Gap(SizeConfig.instance.scaleHeight(8)),
                        TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.remove_red_eye_rounded,
                              color: Colors.black38,
                            ),
                            hintText: "* * * * * *",
                            hintStyle: AppTypography()
                                .bodyMediumM
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
                        Gap(SizeConfig.instance.scaleHeight(32)),
                        OrangeButton(
                            text: "Create Account",
                            onTap: () {
                              if (signpFormKey.currentState!.validate()) {
                                Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const VerificationScreen(),
                                  ),
                                  (route) => false,
                                );
                              } else {
                                errorToast("Enter all fields");
                              }
                            }),
                      ],
                    ),
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
