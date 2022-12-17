import 'package:flutter/material.dart';

import '../models/medico.dart';
import '../screens/agendamento_mes_screen.dart';

class MedicoCardItem extends StatelessWidget {
  final Medico medico;
  late final int id;
  late final String nome;
  late final String especialidade;

  MedicoCardItem({required this.medico}) {
    id = medico.id;
    nome = medico.nome;
    especialidade = medico.especialidade;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          AgendamentoMesScreen.routeName,
          arguments: <String, Object?>{
            'medico': medico
          },
        );
      },
      child: Card(
        elevation: 10,
        child: Container(
          height: 55,
          padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                nome,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(especialidade),
            ],
          ),
        ),
      ),
    );
  }
}
