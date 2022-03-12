import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_management/ui/home_page.dart';
import 'package:task_management/ui/theme.dart';

import 'services/theme_services.dart';

void main() async {
  // TO USE gETSTORAGE at first we have to initialize it also we gave to make sure that getstorage is initialize perfectly otherwise we get an error
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: Themes.light,
        darkTheme: Themes.dark,
        themeMode: ThemeService().theme,
        // ignore: prefer_const_constructors
        home: HomePage());
  }
}
