import 'package:flutter/material.dart';
import 'package:sonrize_web/core/utils/responsive.dart';
import 'package:sonrize_web/ui/core/menu/appbar.dart';
import 'package:sonrize_web/ui/core/menu/drawer.dart';
import 'package:sonrize_web/ui/core/menu/menu_bar.dart';

class ScreenTemplate extends StatelessWidget {
  final Widget child;

  const ScreenTemplate({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      drawer: const CustomDrawer(),
      appBar: width < 1100
          ? const PreferredSize(
              preferredSize: Size(double.infinity, 60), child: CustomAppBar())
          : const PreferredSize(
              preferredSize: Size(double.infinity, 66),
              child: CustomMenuBar(),
            ),
      body: SafeArea(child: child),
    );
  }
}
