
import 'package:flutter/material.dart';

class NodeWidget extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onTap;

  const NodeWidget({Key? key, required this.text, required this.color, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(text, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
