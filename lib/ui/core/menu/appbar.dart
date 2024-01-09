import 'package:flutter/material.dart';
import 'package:sonrize_web/ui/core/menu/homo_logo.dart';
import 'package:sonrize_web/ui/core/menu/theme_switch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.colorScheme.background,
      title: const Row(
        children: [
          HomeLogo(),
          ThemeSwitch(),
        ],
      ),
    );
  }
}
