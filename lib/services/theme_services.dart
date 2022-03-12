// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);
  //first time key er against e kono value pabe na tai false return korbe
  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  // using get we call theme method from anywhere
  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    // so we have to save the state dark or light by passing this boolean value to another function
    _saveThemeToBox(
        !_loadThemeFromBox()); //passing the opposite to save the diff value
  }
}
