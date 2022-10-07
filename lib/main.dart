import "package:flutter/material.dart";

import './screens/home_screen.dart';

void main() => runApp(const MedSchedApp());

class MedSchedApp extends StatefulWidget {
  const MedSchedApp({Key? key}) : super(key: key);

  @override
  _MedSchedAppState createState() => _MedSchedAppState();
}

class _MedSchedAppState extends State<MedSchedApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MedSched App",
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
