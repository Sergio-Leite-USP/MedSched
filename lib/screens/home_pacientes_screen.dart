import 'package:flutter/material.dart';
import 'package:medsched/dummy_data.dart';
import 'package:medsched/widgets/medico_card_item.dart';

import '../widgets/user_selection_button.dart';

class HomePacientesScreen extends StatefulWidget {
  const HomePacientesScreen({Key? key}) : super(key: key);
  static const routeName = "/home-pacientes";

  @override
  State<HomePacientesScreen> createState() => _HomePacientesScreenState();
}

class _HomePacientesScreenState extends State<HomePacientesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MedSched App")),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: DUMMY_MEDICOS.map((m) => MedicoCardItem(id: m.id, nome: m.nome, especialidade: m.especialidade)).toList(),
      ),
    );
  }
}
