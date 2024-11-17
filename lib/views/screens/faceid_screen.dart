import 'dart:math';

import 'package:filllo_mobile/controllers/sign_up_controller.dart';
import 'package:filllo_mobile/views/utils/colours.dart';
import 'package:filllo_mobile/views/utils/mediaquery.dart';
import 'package:filllo_mobile/views/utils/typography.dart';
import 'package:filllo_mobile/views/widgets/orange_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class FaceidScreen extends StatelessWidget {
  const FaceidScreen({super.key});

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
                  "Face ID",
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
                      Gap(SizeConfig.scaleHeight(40)),

                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: CustomPaint(
                              painter: CircleBackground(),
                            ),
                          ),
                          Container(
                              height: 80,
                              width: 80,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              child: Image.asset(
                                "assets/images/face-id.png",
                                color: AppColours.brightOrange,
                              )),
                        ],
                      ),
                      const AspectRatio(
                        aspectRatio: 4,
                      ),
                      Text(
                        "Set Up\n Your Face ID",
                        style: AppTypography.h4,
                        textAlign: TextAlign.center,
                      ),
                      Gap(SizeConfig.scaleHeight(16)),
                      Text(
                        "First position your face in the camera frame.\nThen move your head in a circle to show all angles of your face ",
                        textAlign: TextAlign.center,
                        style: AppTypography.bodyLargeM
                            .copyWith(color: Colors.black26),
                      ),
                      Gap(SizeConfig.scaleHeight(32)),

                      const AspectRatio(
                        aspectRatio: 5,
                      ),
                      // Gap(SizeConfig.scaleHeight(220)),
                      Consumer<SignUpController>(builder: (context, value, _) {
                        return OrangeButton(text: "Continue", onTap: () {});
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

class CircleBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint circlePaint = Paint()
      ..strokeWidth = 4
      ..color = const Color(0xFFffe2d5);

    Paint rectPaint = Paint()
      ..strokeWidth = 2
      ..color = const Color(0xFFffe2d5);

    const double radius = 100; // Circle radius
    Offset center =
        Offset(size.width / 2, size.height / 2); // Center of the circle
    const int numberOfLines = 180; // Number of lines
    canvas.drawCircle(center, 80, circlePaint);

    for (var i = 0; i < numberOfLines; i++) {
      // Calculate angle in radians
      final double angle = (2 * pi / numberOfLines) * i;

      // Start and end points of the line
      final Offset offset1 =
          center + Offset(cos(angle) * radius, sin(angle) * radius);
      final Offset offset2 =
          center - Offset(cos(angle) * radius, sin(angle) * radius);

      // Draw line
      canvas.drawLine(offset1, offset2, rectPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
