import 'package:flutter/material.dart';

class RiskMatrixScreen extends StatelessWidget {
  const RiskMatrixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matrice des Risques'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Matrice pour la visualisation des risques.'),
      ),
    );
  }
}
