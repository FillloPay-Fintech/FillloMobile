import '../utils/utils.dart';

import 'package:filllo_mobile/views/widgets/orange_button.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PincodeScreen extends StatelessWidget {
  const PincodeScreen({super.key});
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
                horizontal: SizeConfig.scaleWidth(8),
                vertical: SizeConfig.scaleHeight(8)),
            child: Row(
              children: [
                const Gap(
                  8,
                ),
                GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                    )),
                const Expanded(child: Gap(4)),
                Text(
                  "Pin Code",
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(SizeConfig.scaleHeight(16)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.scaleWidth(16)),
                      child: Text(
                        "Set Pin Code",
                        style: AppTypography.h4,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Gap(SizeConfig.scaleHeight(8)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.scaleWidth(16)),
                      child: Text(
                        "Set 4 digit pin code to unlock app",
                        textAlign: TextAlign.center,
                        style: AppTypography.bodyLargeM
                            .copyWith(color: Colors.black26),
                      ),
                    ),
                    Gap(SizeConfig.scaleHeight(32)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.scaleWidth(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: SizeConfig.scaleHeight(56),
                            width: SizeConfig.scaleWidth(56),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            decoration: BoxDecoration(
                                color: AppColours.brightOrange.withOpacity(0.2),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                border: Border.all(style: BorderStyle.none)),
                            child: TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              cursorHeight: 42,
                              cursorColor: AppColours.brightOrange,
                              focusNode: focusNodes[0],
                              controller: controllers[0],
                              textAlign: TextAlign.center,
                              style: AppTypography.h4
                                  .copyWith(color: AppColours.brightOrange),
                              maxLength: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  focusNodes[1].requestFocus();
                                }
                              },
                              onEditingComplete: () {
                                focusNodes[1].requestFocus();
                              },
                              decoration: InputDecoration(
                                  hintStyle: AppTypography.h4
                                      .copyWith(color: AppColours.brightOrange),
                                  border: InputBorder.none,
                                  counterText: ""),
                            ),
                          ),
                          Gap(SizeConfig.scaleWidth(16)),
                          Container(
                            height: SizeConfig.scaleHeight(56),
                            width: SizeConfig.scaleWidth(56),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            decoration: BoxDecoration(
                                color: AppColours.brightOrange.withOpacity(0.2),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                border: Border.all(style: BorderStyle.none)),
                            child: TextField(
                              obscureText: true,
                              cursorHeight: 42,
                              cursorColor: AppColours.brightOrange,
                              obscuringCharacter: "*",
                              focusNode: focusNodes[1],
                              controller: controllers[1],
                              textAlign: TextAlign.center,
                              style: AppTypography.h4
                                  .copyWith(color: AppColours.brightOrange),
                              maxLength: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  focusNodes[2].requestFocus();
                                }
                              },
                              onEditingComplete: () {
                                focusNodes[2].requestFocus();
                              },
                              decoration: InputDecoration(
                                  hintStyle: AppTypography.h4
                                      .copyWith(color: AppColours.brightOrange),
                                  border: InputBorder.none,
                                  counterText: ""),
                            ),
                          ),
                          Gap(SizeConfig.scaleWidth(16)),
                          Container(
                            height: SizeConfig.scaleHeight(56),
                            width: SizeConfig.scaleWidth(56),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            decoration: BoxDecoration(
                                color: AppColours.brightOrange.withOpacity(0.2),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                border: Border.all(style: BorderStyle.none)),
                            child: TextField(
                              obscureText: true,
                              cursorHeight: 42,
                              cursorColor: AppColours.brightOrange,
                              obscuringCharacter: "*",
                              focusNode: focusNodes[2],
                              controller: controllers[2],
                              textAlign: TextAlign.center,
                              style: AppTypography.h4
                                  .copyWith(color: AppColours.brightOrange),
                              maxLength: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  focusNodes[3].requestFocus();
                                }
                              },
                              onEditingComplete: () {
                                focusNodes[3].requestFocus();
                              },
                              decoration: InputDecoration(
                                  hintStyle: AppTypography.h4
                                      .copyWith(color: AppColours.brightOrange),
                                  border: InputBorder.none,
                                  counterText: ""),
                            ),
                          ),
                          Gap(SizeConfig.scaleWidth(16)),
                          Container(
                            height: SizeConfig.scaleHeight(56),
                            width: SizeConfig.scaleWidth(56),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            decoration: BoxDecoration(
                                color: AppColours.brightOrange.withOpacity(0.2),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(16)),
                                border: Border.all(style: BorderStyle.none)),
                            child: TextField(
                              obscureText: true,
                              cursorHeight: 42,
                              cursorColor: AppColours.brightOrange,
                              obscuringCharacter: "*",
                              focusNode: focusNodes[3],
                              controller: controllers[3],
                              textAlign: TextAlign.center,
                              style: AppTypography.h4
                                  .copyWith(color: AppColours.brightOrange),
                              maxLength: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  focusNodes[3].unfocus();
                                }
                              },
                              onEditingComplete: () {
                                focusNodes[3].unfocus();
                              },
                              decoration: InputDecoration(
                                  hintStyle: AppTypography.h4
                                      .copyWith(color: AppColours.brightOrange),
                                  border: InputBorder.none,
                                  counterText: ""),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(SizeConfig.scaleHeight(24)),
                    AspectRatio(
                      aspectRatio: 0.5,
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.shade50.withOpacity(0.8),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AspectRatio(aspectRatio: 7),
                            AspectRatio(
                              aspectRatio: 1.1,
                              child: GridView.builder(
                                itemCount: 12,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        mainAxisSpacing: 0,
                                        childAspectRatio: 1.4),
                                itemBuilder: (context, index) {
                                  int newIndex = index + 1;

                                  if (newIndex == 10) {
                                    return Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Text(
                                            ".",
                                            style: AppTypography.h5,
                                          ),
                                        ));
                                  }
                                  if (newIndex == 11) {
                                    newIndex = 0;
                                  }
                                  if (newIndex == 12) {
                                    return Align(
                                        alignment: Alignment.topCenter,
                                        child: GestureDetector(
                                          onTap: () {
                                            for (var i = 0;
                                                i < controllers.length;
                                                i++) {
                                              int reverseInt =
                                                  controllers.length - i;
                                              if (controllers[reverseInt]
                                                  .text
                                                  .isNotEmpty) {
                                                controllers[reverseInt].clear();
                                              }
                                            }
                                          },
                                          child: const Padding(
                                            padding: EdgeInsets.only(top: 8.0),
                                            child: ImageIcon(
                                              AssetImage(
                                                "assets/images/delete.png",
                                              ),
                                              size: 30,
                                            ),
                                          ),
                                        ));
                                  }
                                  return Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      newIndex.toString(),
                                      style: AppTypography.h5,
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 24),
                              child: OrangeButton(text: "Done", onTap: () {}),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
