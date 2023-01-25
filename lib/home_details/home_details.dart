import 'package:flutter/material.dart';

class HomeDetails extends StatelessWidget {
  static const String routeName = '/details';

  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(child: Text('details')),
    );
  }
}
