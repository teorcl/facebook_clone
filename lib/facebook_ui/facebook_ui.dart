import 'package:flutter/material.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facebook UI'),
      ),
      body: const Center(
        child: Text('Facebook UI'),
      ),
    );
  }
}
