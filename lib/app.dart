import 'package:flutter/material.dart';
import 'package:sonrize_web/core/routes/route_config.dart';
import 'package:sonrize_web/core/values/values.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeData,
    );
  }
}
