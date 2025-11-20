import 'package:flutter/material.dart';

class RiskMatrixScreen extends StatelessWidget {
  const RiskMatrixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Matrice des Risques', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 16),
          Expanded(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.grid_on, size: 64, color: Colors.grey),
                    const SizedBox(height: 16),
                    Text('Visualisation des Risques', style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 8),
                    const Text('La matrice 4x4 des risques sera affichée ici.'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
