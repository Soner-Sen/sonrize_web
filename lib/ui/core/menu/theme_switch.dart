import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonrize_web/ui/core/providers/theme_provider.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.sunny,
                  ),
                  onPressed: () async {
                    themeProvider.toggleTheme();
                  }),
            ],
          ),
        ));
  }
}
