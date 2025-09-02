//singleton for the user settings
import 'package:axolotl_pos/structs/settings.dart';

class UserSettings {
  static final UserSettings _instance = UserSettings._internal();

  factory UserSettings() {
    return _instance;
  }

  UserSettings._internal();

  Settings? _settings;

  Settings? get settings => _settings;

  void updateSettings(Settings settings) {
    _settings = settings;
  }
}
