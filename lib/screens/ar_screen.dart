import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';

class ARScreen extends StatelessWidget {
  const ARScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الواقع المعزز')),
      body: ARView(
        onARViewCreated: (controller) {
          controller.addARObject('assets/models/car_model.obj');
        },
      ),
    );
  }
}
