
import 'package:flutter/material.dart';

class EdgeWidget extends StatelessWidget {
  final Offset start;
  final Offset end;
  final Color color;
  final String? label;
  EdgeWidget({required this.start, required this.end, required this.color, this.label});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _EdgePainter(start, end, color, label),
    );
  }
}

class _EdgePainter extends CustomPainter {
  final Offset start, end;
  final Color color;
  final String? label;
  _EdgePainter(this.start, this.end, this.color, this.label);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2;
    canvas.drawLine(start, end, paint);
    if (label != null) {
      final textPainter = TextPainter(
        text: TextSpan(text: label, style: TextStyle(color: Colors.black)),
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      final labelPosition = (start + end) / 2.0;
      textPainter.paint(canvas, labelPosition);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
