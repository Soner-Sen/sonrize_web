import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonrize_web/core/routes/route_config.dart';
import 'package:sonrize_web/ui/core/providers/theme_provider.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp.router(
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      theme: themeProvider.getTheme,
    );
  }
}
