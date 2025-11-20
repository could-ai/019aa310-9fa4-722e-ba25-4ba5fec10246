import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/dashboard_screen.dart';
import '../screens/infrastructure_map_screen.dart';
import '../screens/risk_matrix_screen.dart';
import '../screens/compliance_screen.dart';
import '../screens/report_builder_screen.dart';
import '../widgets/main_layout.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/dashboard',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return MainLayout(child: child);
      },
      routes: [
        GoRoute(
          path: '/dashboard',
          builder: (context, state) => const DashboardScreen(),
        ),
        GoRoute(
          path: '/infrastructure-map',
          builder: (context, state) => const InfrastructureMapScreen(),
        ),
        GoRoute(
          path: '/risk-matrix',
          builder: (context, state) => const RiskMatrixScreen(),
        ),
        GoRoute(
          path: '/compliance-tracker',
          builder: (context, state) => const ComplianceScreen(),
        ),
        GoRoute(
          path: '/report-builder',
          builder: (context, state) => const ReportBuilderScreen(),
        ),
        // Add other routes as needed
      ],
    ),
  ],
);
