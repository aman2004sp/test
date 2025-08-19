
import 'package:flutter/material.dart';

class MindMapScreen extends StatelessWidget {
  const MindMapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IdiyaFlow')),      
      body: const Center(child: Text('Mind Map Canvas Here')),      
    );
  }
}
