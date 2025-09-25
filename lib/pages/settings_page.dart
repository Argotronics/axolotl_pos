import 'package:flutter/material.dart';
import 'package:axolotl_pos/route_names.dart';
import 'package:axolotl_pos/singletons/user_settings.dart';
import 'package:axolotl_pos/structs/settings.dart';
import 'package:axolotl_pos/appBar/appBar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: 'Settings'),
      body: const Center(child: Text('Settings Page')),
    );
  }
}
