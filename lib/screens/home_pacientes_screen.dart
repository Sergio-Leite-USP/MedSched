import 'package:flutter/material.dart';
import 'package:medsched/dummy_data.dart';
import 'package:medsched/widgets/medico_card_item.dart';

class HomePacientesScreen extends StatefulWidget {
  const HomePacientesScreen({Key? key}) : super(key: key);
  static const routeName = "/home-pacientes";

  @override
  State<HomePacientesScreen> createState() => _HomePacientesScreenState();
}

class _HomePacientesScreenState extends State<HomePacientesScreen> {
  Future<String?> _showFilterDialog() async {
    return showDialog<String>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                // The parameter in .pop() is the result returned by the Future
                Navigator.of(context).pop("oi");
              },
            ),
          ],
        );
      },
    );
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
              // _showFilterDialog() gets executed and it's value is THEN stored in 'future' variable
              Future<String?> future = _showFilterDialog();
              future.then((value) => print(value));
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: DUMMY_MEDICOS.map((m) => MedicoCardItem(id: m.id, nome: m.nome, especialidade: m.especialidade)).toList(),
      ),
    );
  }
}
