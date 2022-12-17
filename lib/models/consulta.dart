import 'package:flutter/material.dart';

class Consulta {
  final String title;
  final String description;
  final DateTime from;
  final DateTime to;
  final Color backgroundColor;
  final bool isAllDay;

  Consulta({
    required this.title,
    required this.description,
    required this.from,
    required this.to,
    this.backgroundColor = Colors.blue,
    required this.isAllDay,
  });
}
