import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/dashboard_screen.dart';
import 'package:couldai_user_app/screens/infrastructure_map_screen.dart';
import 'package:couldai_user_app/screens/risk_matrix_screen.dart';
import 'package:couldai_user_app/screens/compliance_tracker_screen.dart';
import 'package:couldai_user_app/screens/report_builder_screen.dart';
import 'package:couldai_user_app/screens/collaboration_screen.dart';
import 'package:couldai_user_app/screens/admin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Analyse Stratégique 5G Tunisie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0056B3), // Bleu UE
          primary: const Color(0xFF0056B3),
          secondary: const Color(0xFF00B4D8), // Bleu Tunisie
        ),
        useMaterial3: true,
      ),
      initialRoute: '/dashboard',
      routes: {
        '/': (context) => const DashboardScreen(), // Default route
        '/dashboard': (context) => const DashboardScreen(),
        '/infrastructure-map': (context) => const InfrastructureMapScreen(),
        '/risk-matrix': (context) => const RiskMatrixScreen(),
        '/compliance-tracker': (context) => const ComplianceTrackerScreen(),
        '/report-builder': (context) => const ReportBuilderScreen(),
        '/collaboration': (context) => const CollaborationScreen(),
        '/admin': (context) => const AdminScreen(),
      },
    );
  }
}
