import 'package:flutter/material.dart';
import 'package:no_drawer_animation/home/widgets/home_collection.dart';

class Home extends StatelessWidget {
  static const String routeName = '/home';

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeCollection(),
              HomeCollection(),
              HomeCollection(),
              HomeCollection(),
              HomeCollection(),
            ],
          ),
        ),
      ),
    );
  }
}
