import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../models/medico.dart';
import './pedido_agendamento_screen.dart';

class AgendamentoDiaScreen extends StatelessWidget {
  static const routeName = "/agendamento-dia";
  const AgendamentoDiaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, Object?>;
    final Medico medico = routeArgs['medico'] as Medico;
    final DateTime dia = routeArgs['dia'] as DateTime;
    final titulo = medico.sexo == "Masculino" ? "Agenda do ${medico.nome}" : "Agenda da ${medico.nome}";

    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: SfCalendar(
        view: CalendarView.day,
        initialSelectedDate: dia,
        initialDisplayDate: dia,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed(
            PedidoAgendamentoScreen.routeName,
            arguments: <String, Object?>{
              'medico': medico,
              'dia': dia
            },
          );
        },
      ),
    );
  }
}
