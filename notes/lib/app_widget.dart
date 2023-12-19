import 'package:flutter/material.dart';
//wimport 'package:notes/app_routes.dart';
import 'package:provider/provider.dart';
import 'pages/home/home_page.dart';
import 'providers/config_provider.dart';
import 'style/theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late ConfigProvider configTheme;
  @override
  Widget build(BuildContext context) {
    configTheme = Provider.of<ConfigProvider>(context);

    return MaterialApp(
      themeMode: configTheme.modeTheme,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      //routes: AppRoutes.routes(),
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      home: const HomePage(),
    );
  }
}
