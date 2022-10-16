import 'package:flutter/material.dart';

class UserSelectionButton extends StatelessWidget {
  final String title;
  final String targetRouteName;

  const UserSelectionButton({
    required this.title,
    required this.targetRouteName,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: SizedBox(
        width: 300,
        height: 60,
        child: Align(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      onPressed: () => Navigator.of(context).pushNamed(targetRouteName),
    );
  }
}
