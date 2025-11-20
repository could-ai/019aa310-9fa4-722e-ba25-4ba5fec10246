import 'package:flutter/material.dart';

class ComplianceScreen extends StatelessWidget {
  const ComplianceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Suivi de Conformité UE', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: [
                _buildComplianceItem('RGPD - Protection des Données', 0.9),
                _buildComplianceItem('NIS2 - Sécurité Numérique', 0.75),
                _buildComplianceItem('UE 5G Toolbox', 0.60),
                _buildComplianceItem('Normes Environnementales', 0.40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildComplianceItem(String title, double progress) {
    Color color = progress > 0.8 ? Colors.green : (progress > 0.5 ? Colors.orange : Colors.red);
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text('${(progress * 100).toInt()}%', style: TextStyle(color: color, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: progress,
              color: color,
              backgroundColor: Colors.grey.shade200,
              minHeight: 8,
              borderRadius: BorderRadius.circular(4),
            ),
          ],
        ),
      ),
    );
  }
}
