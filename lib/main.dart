import "package:flutter/material.dart";

import './screens/home_screen.dart';
import './screens/home_pacientes_screen.dart';
import './screens/agendamento_mes_screen.dart';
import './screens/agendamento_dia_screen.dart';
import './screens/pedido_agendamento_screen.dart';

void main() => runApp(const MedSchedApp());

class MedSchedApp extends StatefulWidget {
  const MedSchedApp({Key? key}) : super(key: key);

  @override
  _MedSchedAppState createState() => _MedSchedAppState();
}

class _MedSchedAppState extends State<MedSchedApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MedSched App",
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        HomePacientesScreen.routeName: (context) => const HomePacientesScreen(),
        AgendamentoMesScreen.routeName: (context) => const AgendamentoMesScreen(),
        AgendamentoDiaScreen.routeName: (context) => const AgendamentoDiaScreen(),
        PedidoAgendamentoScreen.routeName: (context) => const PedidoAgendamentoScreen(),
      },
    );
  }
}
