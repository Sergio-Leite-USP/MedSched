import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../models/medico.dart';
import './agendamento_dia_screen.dart';

class AgendamentoMesScreen extends StatelessWidget {
  const AgendamentoMesScreen({Key? key}) : super(key: key);
  static const routeName = "/agendamento-mes";

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String, Object?>;
    final Medico medico = routeArgs['medico'] as Medico;
    final titulo = medico.sexo == "Masculino" ? "Agenda do ${medico.nome}" : "Agenda da ${medico.nome}";

    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: SfCalendar(
        view: CalendarView.month,
        minDate: DateTime.now(),
        initialSelectedDate: DateTime.now(),
        onTap: (calendarTapDetails) {
          Navigator.of(context).pushNamed(
            AgendamentoDiaScreen.routeName,
            arguments: <String, Object?>{
              'medico': medico,
              'dia': calendarTapDetails.date,
            },
          );
        },
      ),
    );
  }
}
