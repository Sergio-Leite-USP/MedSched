import 'package:flutter/material.dart';

import './home_pacientes_screen.dart';
import '../widgets/user_selection_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MedSched App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            UserSelectionButton(
              title: "Profissional",
              targetRouteName: "não existe",
            ),
            SizedBox(height: 30),
            UserSelectionButton(
              title: "Paciente",
              targetRouteName: HomePacientesScreen.routeName,
            ),
          ],
        ),
      ),
    );
  }
}
