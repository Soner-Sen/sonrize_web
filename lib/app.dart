import 'package:flutter/material.dart';
import 'package:sonrize_web/core/values/values.dart';
import 'package:sonrize_web/ui/screens/home/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: AppTheme.lightThemeData,
    );
  }
}