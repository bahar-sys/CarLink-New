import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('مرحبًا بك في CarLink')),
      body: const Center(child: Text('هذه هي الشاشة الرئيسية')),
    );
  }
}
