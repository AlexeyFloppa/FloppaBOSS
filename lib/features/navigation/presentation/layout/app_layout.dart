import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:floppa_boss/features/navigation/domain/nav_selector.dart';
import 'package:floppa_boss/features/navigation/domain/nav_controller.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavController>(context);
    NavSelector.getCurrentSubmodule(controller);
    final currentModule = NavSelector.getCurrentModule(controller);
    NavSelector.getCurrentSection(controller);
    NavSelector.getSubmodules(controller);

    final currentSubmodule = currentModule.submodules.firstWhere(
      (s) => s.id == controller.selectedSubmoduleId,
      orElse: () => currentModule.submodules.first,
    );

    return Scaffold(
      body: currentSubmodule.screen,
    );
  }
}
