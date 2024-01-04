
import 'package:flutter/material.dart';

class ScreenTemplate extends StatelessWidget {

  final Widget child; 

  const ScreenTemplate({super.key, required this.child});

  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        title: Text('Flutter', 
      style: theme.textTheme.headlineLarge?.copyWith(
        color: Colors.white
      ),
      ),),
      body: child,
    );
  }
}