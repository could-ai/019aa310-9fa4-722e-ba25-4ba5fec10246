import 'package:flutter/material.dart';

class ComplianceTrackerScreen extends StatelessWidget {
  const ComplianceTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suivi Conformité UE'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Page pour le suivi de la conformité avec les standards UE.'),
      ),
    );
  }
}
