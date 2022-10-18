import 'package:flutter/material.dart';

import '../dummy_data.dart';

Future<String?> showFilterDialog(BuildContext context) async {
  List<String> especialidades = [
    "Todas"
  ];
  for (var m in DUMMY_MEDICOS) {
    if (!especialidades.contains(m.especialidade)) especialidades.add(m.especialidade);
  }

  String _dropdownValue = especialidades[0];
  return showDialog<String>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (context) => StatefulBuilder(
      //Feito para que se possa usar o método setState((){}) dentro de DropdownButton
      builder: (context, setState) {
        return AlertDialog(
          title: const Text('Filtrar'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Row(
                  children: [
                    const Text("Especialidade"),
                    DropdownButton(
                      alignment: Alignment.centerRight,
                      value: _dropdownValue,
                      items: especialidades.map((e) => DropdownMenuItem(child: Text(e), value: e)).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          _dropdownValue = value!;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(_dropdownValue); // The parameter in .pop() is the result returned by the Future
              },
            ),
          ],
        );
      },
    ),
  );
}

//TODO:
//Deixar a caixa de seleção bonita.
//Quando o usuário clica pela segunda vez no botão de filtros, o app deve lembrar qual ele selecionou da primeira vez que clicou.
