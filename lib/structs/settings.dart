// This class holds the user settings for the application
// It includes personal information as well as preferences
import 'package:flutter/material.dart';

class Settings {
  final bool alerts;
  final int id;
  final int phone;
  final int currency;
  final ThemeData theme;
  final String email;
  final String name;
  final String language;
  final String timezone;
  final String dateFormat;
  final String timeFormat;

  Settings({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.theme,
    required this.language,
    required this.currency,
    required this.timezone,
    required this.dateFormat,
    required this.timeFormat,
    required this.alerts,
  });
}
