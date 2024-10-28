import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final String user;

  const WelcomeScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pop(context);  // Regresar a la pantalla de Login
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Bienvenido, $user",
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
