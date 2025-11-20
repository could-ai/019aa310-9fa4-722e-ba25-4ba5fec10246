import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    
    // Determine the selected index based on the current path
    int selectedIndex = 0;
    if (location.startsWith('/dashboard')) selectedIndex = 0;
    else if (location.startsWith('/infrastructure-map')) selectedIndex = 1;
    else if (location.startsWith('/risk-matrix')) selectedIndex = 2;
    else if (location.startsWith('/compliance-tracker')) selectedIndex = 3;
    else if (location.startsWith('/report-builder')) selectedIndex = 4;

    // Responsive layout: NavigationRail for desktop/tablet, BottomNavigationBar for mobile
    // For simplicity in this initial setup, we'll use a Row with NavigationRail for larger screens
    // and assume a responsive wrapper later. For now, let's stick to a standard sidebar layout suitable for web/desktop apps.
    
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: (int index) {
              switch (index) {
                case 0:
                  context.go('/dashboard');
                  break;
                case 1:
                  context.go('/infrastructure-map');
                  break;
                case 2:
                  context.go('/risk-matrix');
                  break;
                case 3:
                  context.go('/compliance-tracker');
                  break;
                case 4:
                  context.go('/report-builder');
                  break;
              }
            },
            labelType: NavigationRailLabelType.all,
            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Icon(Icons.analytics, color: Colors.white),
              ),
            ),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_outlined),
                selectedIcon: Icon(Icons.dashboard),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.map_outlined),
                selectedIcon: Icon(Icons.map),
                label: Text('Carte 5G'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.grid_view),
                selectedIcon: Icon(Icons.grid_view_rounded),
                label: Text('Risques'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.verified_user_outlined),
                selectedIcon: Icon(Icons.verified_user),
                label: Text('Conformité'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.description_outlined),
                selectedIcon: Icon(Icons.description),
                label: Text('Rapports'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Column(
              children: [
                // Header
                Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _getTitle(selectedIndex),
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.notifications_outlined),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 8),
                          const CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.person, size: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Main Content
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getTitle(int index) {
    switch (index) {
      case 0: return 'Tableau de Bord Stratégique';
      case 1: return 'Cartographie Infrastructure 5G';
      case 2: return 'Matrice des Risques';
      case 3: return 'Suivi Conformité UE';
      case 4: return 'Générateur de Rapports';
      default: return 'Application 5G Tunisie';
    }
  }
}
