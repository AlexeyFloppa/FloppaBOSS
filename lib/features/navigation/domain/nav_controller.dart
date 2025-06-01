import 'package:flutter/material.dart';

class NavController extends ChangeNotifier {
  String selectedSectionId = 'dashboard';
  String selectedModuleId = 'dashboard_main';
  String selectedSubmoduleId = 'dashboard';

  void setSection(String id) {
    selectedSectionId = id;
    notifyListeners();
  }

  void setModule(String id) {
    selectedModuleId = id;
    notifyListeners();
  }

  void setSubmodule(String id) {
    selectedSubmoduleId = id;
    notifyListeners();
  }

  void reset() {
    selectedSectionId = 'dashboard';
    selectedModuleId = 'dashboard_main';
    selectedSubmoduleId = 'dashboard';
    notifyListeners();
  }
}
