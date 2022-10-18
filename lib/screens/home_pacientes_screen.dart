import 'package:flutter/material.dart';

import '../dummy_data.dart';

import '../widgets/medico_card_item.dart';
import '../widgets/filter_dialog.dart';

class HomePacientesScreen extends StatefulWidget {
  const HomePacientesScreen({Key? key}) : super(key: key);
  static const routeName = "/home-pacientes";

  @override
  State<HomePacientesScreen> createState() => _HomePacientesScreenState();
}

class _HomePacientesScreenState extends State<HomePacientesScreen> {
  //Considere otimizar tudo isso aqui...
  List<MedicoCardItem> medicosFiltrados = DUMMY_MEDICOS.map((m) => MedicoCardItem(id: m.id, nome: m.nome, especialidade: m.especialidade)).toList();
  String? filtroAtual;

  void filtrarPorEspecialidade(String filtro) {
    setState(() {
      medicosFiltrados = DUMMY_MEDICOS.map((m) => MedicoCardItem(id: m.id, nome: m.nome, especialidade: m.especialidade)).toList();
      if (filtro == "Todas") return;
      medicosFiltrados = medicosFiltrados.where((m) => m.especialidade == filtro).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MedSched App"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.filter_list_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              // _showFilterDialog() gets executed and it's value is THEN stored in 'dialogFuture' variable
              Future<String?> dialogFuture = showFilterDialog(context, filtroAtual: filtroAtual);
              dialogFuture.then((value) {
                filtrarPorEspecialidade(value!);
                filtroAtual = value;
              }); // possível erro ao ignorar null Safety
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: medicosFiltrados,
      ),
    );
  }
}

//TODO: 
//Buscar e filtrar por nome do médico
//Todo médico deve ter uma agenda.
//Clicar no médico deve levar para uma página da agenda daquele médico específico.
