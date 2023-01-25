import 'dart:async';

import 'package:flutter/material.dart';
import 'package:no_drawer_animation/home/home.dart';
import 'package:no_drawer_animation/home_details/home_details.dart';
import 'package:no_drawer_animation/routes/page_transition_configuration.dart';

void main() {
  runZonedGuarded(
    () {
      runApp(const MyApp());
    },
    (error, stack) {},
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.blue,
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      pageTransitionsTheme: PageTransitionConfiguration.get(),
    );

    var materialApp = MaterialApp(
      title: 'No drawer animation',
      debugShowCheckedModeBanner: false,
      theme: themeData.copyWith(
        colorScheme: themeData.colorScheme.copyWith(secondary: Colors.blue),
      ),
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => const Home(),
        HomeDetails.routeName: (context) => const HomeDetails(),
      },
    );
    return materialApp;
  }
}
