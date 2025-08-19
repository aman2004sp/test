
import 'package:flutter/material.dart';
import 'screens/mind_map_screen.dart';

void main() {
  runApp(const IdiyaFlowApp());
}

class IdiyaFlowApp extends StatelessWidget {
  const IdiyaFlowApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IdiyaFlow',
      home: const MindMapScreen(),
    );
  }
}
