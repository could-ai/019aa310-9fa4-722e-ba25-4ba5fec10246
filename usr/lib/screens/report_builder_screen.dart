import 'package:flutter/material.dart';

class ReportBuilderScreen extends StatelessWidget {
  const ReportBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Générateur de Rapports'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Outil pour générer des rapports personnalisés.'),
      ),
    );
  }
}
