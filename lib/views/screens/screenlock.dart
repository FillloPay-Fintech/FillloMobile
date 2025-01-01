import 'package:filllo_mobile/controllers/screenlock_controller.dart';
import 'package:filllo_mobile/views/screens/faceid_screen.dart';
import 'package:filllo_mobile/views/screens/fingerprint_screen.dart';
import 'package:filllo_mobile/views/screens/get_started.dart';
import 'package:filllo_mobile/views/screens/pincode_screen.dart';

import '../utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ScreenlockScreen extends StatelessWidget {
  const ScreenlockScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  "Screen Lock",
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
                  child: Column(
                    children: [
                      Gap(SizeConfig.instance.scaleHeight(16)),
                      Text(
                        "Select\n Screen Lock Type",
                        style: AppTypography().h4,
                        textAlign: TextAlign.center,
                      ),
                      Gap(SizeConfig.instance.scaleHeight(16)),
                      Text(
                        "Please setup lock with either face id, fingerprint or pin code",
                        textAlign: TextAlign.center,
                        style: AppTypography()
                            .bodyLargeM
                            .copyWith(color: Colors.black26),
                      ),
                      Gap(SizeConfig.instance.scaleHeight(32)),
                      GestureDetector(
                        onTap: () {
                          Provider.of<ScreenlockController>(context,
                                  listen: false)
                              .setLockType(LockType.faceId);
                          ScreenlockController()
                              .nextScreen(context, const FaceidScreen());
                        },
                        child: Consumer<ScreenlockController>(
                            builder: (context, value, a) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.instance.scaleHeight(18),
                                horizontal: SizeConfig.instance.scaleWidth(16)),
                            decoration: BoxDecoration(
                                color: value.lockType == LockType.faceId
                                    ? AppColours.brightOrange
                                    : const Color(0xFFF9F9FF),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(16))),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.face_rounded),
                                ),
                                Gap(SizeConfig.instance.scaleWidth(16)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Face ID",
                                      style: AppTypography().bodyMediumM,
                                    ),
                                    Text("Unlock app with face id",
                                        style: AppTypography()
                                            .bodySmallM
                                            .copyWith(
                                                color: value.lockType ==
                                                        LockType.faceId
                                                    ? Colors.white60
                                                    : Colors.black38))
                                  ],
                                ),
                                const Expanded(child: Gap(2)),
                                Icon(
                                  Icons.arrow_right,
                                  size: SizeConfig.instance.scaleHeight(32),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                      Gap(SizeConfig.instance.scaleHeight(32)),
                      GestureDetector(
                        onTap: () {
                          Provider.of<ScreenlockController>(context,
                                  listen: false)
                              .setLockType(LockType.fingerPrint);
                          ScreenlockController()
                              .nextScreen(context, const FingerprintScreen());
                        },
                        child: Consumer<ScreenlockController>(
                            builder: (context, value, _) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.instance.scaleHeight(18),
                                horizontal: SizeConfig.instance.scaleWidth(16)),
                            decoration: BoxDecoration(
                                color: value.lockType == LockType.fingerPrint
                                    ? AppColours.brightOrange
                                    : const Color(0xFFF9F9FF),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(16))),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.fingerprint_rounded),
                                ),
                                Gap(SizeConfig.instance.scaleWidth(16)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Finger Print",
                                      style: AppTypography().bodyMediumM,
                                    ),
                                    Text(
                                      "Unlock app with finger print",
                                      style: AppTypography()
                                          .bodySmallM
                                          .copyWith(
                                              color: value.lockType ==
                                                      LockType.fingerPrint
                                                  ? Colors.white60
                                                  : Colors.black38),
                                    )
                                  ],
                                ),
                                const Expanded(child: Gap(2)),
                                Icon(
                                  Icons.arrow_right,
                                  size: SizeConfig.instance.scaleHeight(32),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                      Gap(SizeConfig.instance.scaleHeight(32)),
                      GestureDetector(
                        onTap: () {
                          Provider.of<ScreenlockController>(context,
                                  listen: false)
                              .setLockType(LockType.pin);
                          ScreenlockController()
                              .nextScreen(context, const PincodeScreen());
                        },
                        child: Consumer<ScreenlockController>(
                            builder: (context, value, _) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                vertical: SizeConfig.instance.scaleHeight(18),
                                horizontal: SizeConfig.instance.scaleWidth(16)),
                            decoration: BoxDecoration(
                                color: value.lockType == LockType.pin
                                    ? AppColours.brightOrange
                                    : const Color(0xFFF9F9FF),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(16))),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.pin_outlined),
                                ),
                                Gap(SizeConfig.instance.scaleWidth(16)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pin Code",
                                      style: AppTypography().bodyMediumM,
                                    ),
                                    Text(
                                      "Unlock app with pin code",
                                      style: AppTypography()
                                          .bodySmallM
                                          .copyWith(
                                              color:
                                                  value.lockType == LockType.pin
                                                      ? Colors.white60
                                                      : Colors.black38),
                                    )
                                  ],
                                ),
                                const Expanded(child: Gap(2)),
                                Icon(
                                  Icons.arrow_right,
                                  size: SizeConfig.instance.scaleHeight(32),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                      const AspectRatio(
                        aspectRatio: 3,
                      ),
                      GestureDetector(
                        onTap: () => ScreenlockController()
                            .nextScreen(context, const GetStartedScreen()),
                        child: Text(
                          "Skip Now",
                          style: AppTypography()
                              .bodyMediumSB
                              .copyWith(color: Colors.black26),
                        ),
                      )
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
