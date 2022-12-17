import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../models/medico.dart';
import '../models/consulta.dart';
import './agendamento_dia_screen.dart';

class PedidoAgendamentoScreen extends StatefulWidget {
  const PedidoAgendamentoScreen({Key? key}) : super(key: key);
  static const routeName = "/pedido-agendamento";

  @override
  State<PedidoAgendamentoScreen> createState() => _PedidoAgendamentoScreenState();
}

class _PedidoAgendamentoScreenState extends State<PedidoAgendamentoScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, Object?>;
    final Medico medico = routeArgs['medico'] as Medico;
    final DateTime dia = routeArgs['dia'] as DateTime;
    final Consulta? consulta;

    return Scaffold(
      appBar: AppBar(
        title: Text("Agendar com ${medico.nome}"),
        leading: const CloseButton(),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Row(children: const [
              Icon(Icons.done),
              Text('Agendar'),
            ]),
          )
        ],
      ),
      body: Container(),
    );
  }
}
