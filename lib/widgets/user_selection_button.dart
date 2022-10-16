import 'package:flutter/material.dart';

class UserSelectionButton extends StatelessWidget {
  const UserSelectionButton({required this.title});

  final String title;

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
      onPressed: () => {},
    );
  }
}
