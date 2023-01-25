import 'package:flutter/material.dart';

class CardBottomDrawer extends StatelessWidget {
  final int index;

  const CardBottomDrawer(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(index.toString()),
    );
  }
}
