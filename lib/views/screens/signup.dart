import 'package:filllo_mobile/controllers/sign_up_controller.dart';
import 'package:filllo_mobile/views/screens/create_account.dart';
import 'package:filllo_mobile/views/utils/colours.dart';
import 'package:filllo_mobile/views/utils/mediaquery.dart';
import 'package:filllo_mobile/views/utils/typography.dart';
import 'package:filllo_mobile/views/widgets/error_toast.dart';
import 'package:filllo_mobile/views/widgets/orange_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  "Sign Up",
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
                        "Welcome\n Choose Account Type",
                        style: AppTypography.h4,
                        textAlign: TextAlign.center,
                      ),
                      Gap(SizeConfig.scaleHeight(16)),
                      Text(
                        "Please select account type",
                        textAlign: TextAlign.center,
                        style: AppTypography.bodyLargeM
                            .copyWith(color: Colors.black26),
                      ),
                      Gap(SizeConfig.scaleHeight(32)),
                      GestureDetector(
                        onTap: () {
                          Provider.of<SignUpController>(context, listen: false)
                              .setAccountType(AccountType.personal);
                        },
                        child: Consumer<SignUpController>(
                            builder: (context, value, a) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.scaleHeight(12),
                                horizontal: SizeConfig.scaleWidth(16)),
                            decoration: BoxDecoration(
                                color: value.accountType == AccountType.personal
                                    ? AppColours.brightOrange
                                    : const Color(0xFFF9F9FF),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(16))),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.person_2_rounded),
                                ),
                                Gap(SizeConfig.scaleWidth(16)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Personal Account",
                                      style: AppTypography.bodyMediumM,
                                    ),
                                    Text(
                                        "Send,spend, and receive money\naround the world for less",
                                        style: AppTypography.bodySmallM
                                            .copyWith(
                                                color: value.accountType ==
                                                        AccountType.personal
                                                    ? Colors.white60
                                                    : Colors.black38))
                                  ],
                                ),
                                const Expanded(child: Gap(2)),
                                Icon(
                                  Icons.arrow_right,
                                  size: SizeConfig.scaleHeight(32),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                      Gap(SizeConfig.scaleHeight(32)),
                      GestureDetector(
                        onTap: () {
                          Provider.of<SignUpController>(context, listen: false)
                              .setAccountType(AccountType.business);
                        },
                        child: Consumer<SignUpController>(
                            builder: (context, value, _) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.scaleHeight(12),
                                horizontal: SizeConfig.scaleWidth(16)),
                            decoration: BoxDecoration(
                                color: value.accountType == AccountType.business
                                    ? AppColours.brightOrange
                                    : const Color(0xFFF9F9FF),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(16))),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.person_2_rounded),
                                ),
                                Gap(SizeConfig.scaleWidth(16)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Business Account",
                                      style: AppTypography.bodyMediumM,
                                    ),
                                    Text(
                                      "Do business transaction\ninternationally",
                                      style: AppTypography.bodySmallM.copyWith(
                                          color: value.accountType ==
                                                  AccountType.business
                                              ? Colors.white60
                                              : Colors.black38),
                                    )
                                  ],
                                ),
                                const Expanded(child: Gap(2)),
                                Icon(
                                  Icons.arrow_right,
                                  size: SizeConfig.scaleHeight(32),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                      Gap(SizeConfig.scaleHeight(220)),
                      Consumer<SignUpController>(builder: (context, value, _) {
                        return OrangeButton(
                            text: "Continue",
                            onTap: () {
                              if (value.accountType == null) {
                                return errorToast("Select Account Type");
                              } else {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateAccountScreen(),
                                ));
                              }
                            });
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
