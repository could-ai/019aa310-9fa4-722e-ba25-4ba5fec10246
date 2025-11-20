import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class InfrastructureMapScreen extends StatelessWidget {
  const InfrastructureMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(33.8869, 9.5375), // Center of Tunisia
              initialZoom: 6.5,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              const MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(36.8065, 10.1815), // Tunis
                    width: 40,
                    height: 40,
                    child: Icon(Icons.location_on, color: Colors.red, size: 40),
                  ),
                  Marker(
                    point: LatLng(35.8256, 10.6084), // Sousse
                    width: 40,
                    height: 40,
                    child: Icon(Icons.location_on, color: Colors.blue, size: 40),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 16,
            right: 16,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Légende', style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    _buildLegendItem(Colors.red, 'Tour 5G (Actif)'),
                    _buildLegendItem(Colors.blue, 'Tour 5G (Planifié)'),
                    _buildLegendItem(Colors.green, 'Data Center'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(Color color, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Container(width: 12, height: 12, color: color),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
