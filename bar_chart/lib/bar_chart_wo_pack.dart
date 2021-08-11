import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class BarChartWOPack extends StatefulWidget {
  BarChartWOPack({Key? key}) : super(key: key);

  @override
  _BarChartWOPackState createState() => _BarChartWOPackState();
}

class _BarChartWOPackState extends State<BarChartWOPack> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.50;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            height: 460,
            width: double.infinity,
            color: Color(0xffF6F6F6),
            child: Center(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 24,
                    child: Container(
                      width: width,
                      child: DottedLine(
                        dashColor: Colors.black12,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 48,
                    child: Container(
                      width: width,
                      child: DottedLine(
                        dashColor: Colors.black12,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 72,
                    child: Container(
                      width: width,
                      child: DottedLine(
                        dashColor: Colors.black12,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 96,
                    child: Container(
                      width: width,
                      child: DottedLine(
                        dashColor: Colors.black12,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 119,
                    child: Container(
                      width: width,
                      child: DottedLine(
                        dashColor: Colors.black12,
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: width,
                    child: CustomPaint(
                      foregroundPainter: GraphPainter(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GraphPainter extends CustomPainter {
  Paint trackBar1Paint = Paint()
    ..color = Color(0xff818aab)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;

  Paint trackBar2Paint = Paint()
    ..color = Color(0xffD91315)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;

  Paint trackBar3Paint = Paint()
    ..color = Color(0xffF6B2A8)
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;

  Paint trackPaint = Paint()
    ..color = Colors.white
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;

  @override
  void paint(Canvas canvas, Size size) {
    Path trackPath = Path();
    Path trackBarPath = Path();
    Path trackBarPath2 = Path();
    Path trackBarPath3 = Path();

    List val = [
      size.height * 0.3,
      size.height * 0.5,
      size.height * 0.25,
      size.height * 0.5,
      size.height * 0.1,
    ];

    List val2 = [
      size.height * 0.66,
      size.height * 0.70,
      size.height * 0.70,
      size.height * 0.55,
      size.height * 0.60,
    ];

    List val3 = [
      size.height * 0.85,
      size.height * 0.90,
      size.height * 0.95,
      size.height * 0.84,
      size.height * 0.78,
    ];

    double origin = 0;

    for (var i = 0; i < val.length; i++) {
      trackPath.moveTo(origin, size.height);
      trackPath.lineTo(origin, 0);

      trackBarPath.moveTo(origin, size.height);
      trackBarPath.lineTo(origin, val[i]);

      trackBarPath2.moveTo(origin, size.height);
      trackBarPath2.lineTo(origin, val2[i]);

      trackBarPath3.moveTo(origin, size.height);
      trackBarPath3.lineTo(origin, val3[i]);

      origin = origin + size.width * 0.25;
    }

    canvas.drawPath(trackPath, trackPaint);
    canvas.drawPath(trackBarPath, trackBar1Paint);
    canvas.drawPath(trackBarPath2, trackBar2Paint);
    canvas.drawPath(trackBarPath3, trackBar3Paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
