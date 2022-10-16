import 'package:flutter/material.dart';

import '../models/medico.dart';

class MedicoCardItem extends StatelessWidget {
  final int id;
  final String nome;
  final String especialidade;

  const MedicoCardItem({
    required this.id,
    required this.nome,
    required this.especialidade,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
