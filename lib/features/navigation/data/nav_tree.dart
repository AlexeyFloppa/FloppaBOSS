import 'package:flutter/material.dart';
import 'package:floppa_boss/features/dashboard/dashboard_screen.dart';
import 'package:floppa_boss/features/example_screens.dart';

import '../domain/models/section_nav_data.dart';
import '../domain/models/module_nav_data.dart';

final List<SectionNavData> appSections = [
  SectionNavData(
    id: 'dashboard',
    title: 'Dashboard',
    icon: Icons.dashboard,
    modules: [
      ModuleNavData(
        id: 'dashboard_main',
        title: 'Overview',
        icon: Icons.insights,
        screen: DashboardScreen(),
      ),
      ModuleNavData(
        id: 'dashboard_favorites',
        title: 'Favorites',
        icon: Icons.star,
        screen: ExampleScreen2(),
      ),
      ModuleNavData(
        id: 'dashboard_settings',
        title: 'Settings',
        icon: Icons.settings,
        screen: ExampleScreen3(),
      ),
    ],
  ),
  SectionNavData(
    id: 'projects',
    title: 'Projects',
    icon: Icons.extension,
    modules: [
      ModuleNavData(
        id: 'projects_active',
        title: 'Active Projects',
        icon: Icons.play_circle_fill,
        screen: ExampleScreen1(),
      ),
      ModuleNavData(
        id: 'projects_all',
        title: 'All Modules',
        icon: Icons.apps,
        screen: ExampleScreen2(),
      ),
      ModuleNavData(
        id: 'projects_ai_pick',
        title: 'FloppaAI Suggestions',
        icon: Icons.auto_awesome,
        screen: ExampleScreen3(),
      ),
    ],
  ),
  SectionNavData(
    id: 'stats',
    title: 'Stats',
    icon: Icons.bar_chart,
    modules: [
      ModuleNavData(
        id: 'stats_income',
        title: 'Earnings',
        icon: Icons.trending_up,
        screen: ExampleScreen1(),
      ),
      ModuleNavData(
        id: 'stats_efficiency',
        title: 'Efficiency',
        icon: Icons.bolt,
        screen: ExampleScreen2(),
      ),
      ModuleNavData(
        id: 'stats_energy',
        title: 'Energy Usage',
        icon: Icons.battery_charging_full,
        screen: ExampleScreen3(),
      ),
    ],
  ),
  SectionNavData(
    id: 'history',
    title: 'History',
    icon: Icons.history,
    modules: [
      ModuleNavData(
        id: 'history_sessions',
        title: 'Run Sessions',
        icon: Icons.timeline,
        screen: ExampleScreen1(),
      ),
      ModuleNavData(
        id: 'history_logs',
        title: 'Logs',
        icon: Icons.receipt_long,
        screen: ExampleScreen2(),
      ),
      ModuleNavData(
        id: 'history_exports',
        title: 'Export Data',
        icon: Icons.save_alt,
        screen: ExampleScreen3(),
      ),
    ],
  ),
  SectionNavData(
    id: 'community',
    title: 'Community',
    icon: Icons.people,
    modules: [
      ModuleNavData(
        id: 'community_feed',
        title: 'Activity Feed',
        icon: Icons.rss_feed,
        screen: ExampleScreen1(),
      ),
      ModuleNavData(
        id: 'community_market',
        title: 'Module Market',
        icon: Icons.shopping_cart,
        screen: ExampleScreen2(),
      ),
      ModuleNavData(
        id: 'community_submit',
        title: 'Submit Runner',
        icon: Icons.upload,
        screen: ExampleScreen3(),
      ),
    ],
  ),
];
