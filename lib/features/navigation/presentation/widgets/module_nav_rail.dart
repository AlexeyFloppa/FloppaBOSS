import 'package:floppa_boss/features/navigation/domain/nav_controller.dart';
import 'package:floppa_boss/features/navigation/domain/nav_selector.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ModuleNavRail extends StatelessWidget {
  const ModuleNavRail({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NavController>(context);
    final modules = NavSelector.getModules(controller);
    final selectedIndex =
        modules.indexWhere((m) => m.id == controller.selectedModuleId);

    final currentModule = selectedIndex >= 0 && selectedIndex < modules.length
        ? modules[selectedIndex]
        : null;

    return Container(
      color: Theme.of(context).appBarTheme.backgroundColor ??
          Theme.of(context).colorScheme.surface,
      width: 90,
      child: Column(
        children: [
          Expanded(
            child: NavigationRail(
              selectedIndex: selectedIndex,
              labelType: NavigationRailLabelType.all,
              onDestinationSelected: (index) {
                final module = modules[index];
                controller.setModule(module.id);
                if (module.submodules.isNotEmpty) {
                  controller.setSubmodule(module.submodules.first.id);
                }
              },
              destinations: modules
                  .map((module) => NavigationRailDestination(
                        icon: Icon(module.icon),
                        label: Text(module.title),
                      ))
                  .toList(),
            ),
          ),
          // TODO: Rewrite it becasue if we have no button, we have shirink sized box, with padding, which is not good
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: currentModule?.bottomButton),
        ],
      ),
    );
  }
}
