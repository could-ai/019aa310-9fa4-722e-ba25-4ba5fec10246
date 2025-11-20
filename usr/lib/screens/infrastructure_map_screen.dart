import 'package:flutter/material.dart';

class InfrastructureMapScreen extends StatelessWidget {
  const InfrastructureMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carte Interactive 5G'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Carte interactive pour l\'infrastructure 5G.'),
      ),
    );
  }
}
