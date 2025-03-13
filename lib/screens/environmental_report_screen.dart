import 'package:flutter/material.dart';

class EnvironmentalReportScreen extends StatelessWidget {
  const EnvironmentalReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('التقارير البيئية')),
      body: const Center(child: Text('هذه هي شاشة التقارير البيئية')),
    );
  }
}
