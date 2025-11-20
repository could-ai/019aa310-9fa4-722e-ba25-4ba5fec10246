import 'package:flutter/material.dart';

class ReportBuilderScreen extends StatelessWidget {
  const ReportBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Générateur de Rapports', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                _buildReportTemplate('Rapport Stratégique', Icons.analytics),
                _buildReportTemplate('Analyse des Risques', Icons.warning),
                _buildReportTemplate('Conformité UE', Icons.verified),
                _buildReportTemplate('Synthèse Direction', Icons.summarize),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReportTemplate(String title, IconData icon) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Colors.blue),
            const SizedBox(height: 16),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Générer PDF', style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
