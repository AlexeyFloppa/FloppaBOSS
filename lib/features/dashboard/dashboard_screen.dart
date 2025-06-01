import 'package:flutter/material.dart';
import 'package:floppa_boss/core/theme/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppConstants.paddingMedium),
            child: Column(
              children: [
                Text(
                  'Welcome to Floppa Boss',
                  textAlign: TextAlign.center,
                  style: AppConstants.headerTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
