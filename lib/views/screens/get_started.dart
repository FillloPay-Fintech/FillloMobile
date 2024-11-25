import 'package:filllo_mobile/views/utils/utils.dart';
import 'package:filllo_mobile/views/widgets/orange_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AspectRatio(aspectRatio: 2),
            Align(
              child: SizedBox(
                height: 200,
                width: 200,
                child: CustomPaint(
                  painter: CheckIcon(),
                ),
              ),
            ),
            const AspectRatio(aspectRatio: 5),
            Text(
              "Welcome to Filllo",
              style: AppTypography().h4.copyWith(color: Colors.white),
            ),
            const Gap(16),
            Text(
              "Voila! You have successfully created your\naccount.",
              style: AppTypography().bodyLargeM.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const AspectRatio(aspectRatio: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: OrangeButton(text: "Get Started", onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckIcon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint checkPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = SizeConfig.instance().scaleWidth(25)
      ..strokeCap = StrokeCap.round
      ..color = Colors.green.shade300;

    Paint circlePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.white;

    final center = Offset(size.width / 2, size.height / 2);

    final path = Path()
      ..moveTo(size.width * 0.25, size.height * 0.5) // Start point
      ..lineTo(size.width * 0.42, size.height * 0.7) // Downward stroke
      ..lineTo(size.width * 0.72, size.height * 0.33); // Upward stroke

    canvas.drawCircle(center, center.dy + 30,
        circlePaint..color = AppColours.brightOrange.withOpacity(0.05));

    canvas.drawCircle(center, center.dy, circlePaint..color = Colors.white);

    // Draw the path on the canvas
    canvas.drawPath(path, checkPaint);
    //left hand side circles
    canvas.drawCircle(
        Offset(size.width * 1.05, center.dy * 0.3),
        SizeConfig.instance().scaleWidth(8),
        circlePaint..color = AppColours.brightOrange);
    canvas.drawCircle(
        Offset(size.width * 0.95, size.height * -0.15),
        SizeConfig.instance().scaleWidth(7),
        circlePaint..color = Colors.green.shade300);
    canvas.drawCircle(
        Offset(size.width * 1.05, size.height * 0.85),
        SizeConfig.instance().scaleWidth(6),
        circlePaint..color = AppColours.brightOrange);
    canvas.drawCircle(
        Offset(size.width * 1.15, size.height * 1.1),
        SizeConfig.instance().scaleWidth(12),
        circlePaint..color = Colors.white);

    //right hand side circles
    canvas.drawCircle(
        Offset(size.width * -0.05, center.dy * 0.3),
        SizeConfig.instance().scaleWidth(16),
        circlePaint..color = AppColours.brightOrange);
    canvas.drawCircle(Offset(size.width * -0.23, size.height * 0.3),
        SizeConfig.instance().scaleWidth(7), circlePaint..color = Colors.white);
    canvas.drawCircle(
        Offset(size.width * 0.13, size.height * 0.85),
        SizeConfig.instance().scaleWidth(6),
        circlePaint..color = Colors.green.shade300);
    canvas.drawCircle(
        Offset(size.width * -0.28, size.height * 1.1),
        SizeConfig.instance().scaleWidth(6),
        circlePaint..color = AppColours.brightOrange);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
