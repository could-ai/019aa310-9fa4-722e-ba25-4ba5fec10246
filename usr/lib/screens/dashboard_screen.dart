import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // KPI Section
          Row(
            children: [
              Expanded(child: _buildKpiCard(context, 'Couverture 5G', '45%', Icons.signal_cellular_alt, Colors.blue)),
              const SizedBox(width: 16),
              Expanded(child: _buildKpiCard(context, 'Sites Déployés', '124', Icons.tower, Colors.orange)),
              const SizedBox(width: 16),
              Expanded(child: _buildKpiCard(context, 'Score Risque', 'Low', Icons.shield, Colors.green)),
              const SizedBox(width: 16),
              Expanded(child: _buildKpiCard(context, 'Conformité UE', '85%', Icons.check_circle, Colors.purple)),
            ],
          ),
          const SizedBox(height: 24),
          
          // Charts Section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Progression du Déploiement', style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: 300,
                          child: LineChart(
                            LineChartData(
                              gridData: const FlGridData(show: true),
                              titlesData: const FlTitlesData(
                                rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              ),
                              borderData: FlBorderData(show: true),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: const [
                                    FlSpot(0, 10),
                                    FlSpot(1, 25),
                                    FlSpot(2, 40),
                                    FlSpot(3, 60),
                                    FlSpot(4, 85),
                                    FlSpot(5, 124),
                                  ],
                                  isCurved: true,
                                  color: Theme.of(context).colorScheme.primary,
                                  barWidth: 4,
                                  belowBarData: BarAreaData(show: true, color: Theme.of(context).colorScheme.primary.withOpacity(0.2)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Répartition par Opérateur', style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: 300,
                          child: PieChart(
                            PieChartData(
                              sections: [
                                PieChartSectionData(value: 40, title: 'Op A', color: Colors.blue, radius: 50),
                                PieChartSectionData(value: 30, title: 'Op B', color: Colors.red, radius: 50),
                                PieChartSectionData(value: 30, title: 'Op C', color: Colors.green, radius: 50),
                              ],
                              sectionsSpace: 2,
                              centerSpaceRadius: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildKpiCard(BuildContext context, String title, String value, IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, color: color, size: 30),
                Text(
                  '+12%', 
                  style: TextStyle(color: Colors.green.shade700, fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(value, style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
            Text(title, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
