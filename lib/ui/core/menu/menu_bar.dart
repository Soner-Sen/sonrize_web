import 'package:flutter/material.dart';
import 'package:sonrize_web/core/values/values.dart';
import 'package:sonrize_web/ui/core/menu/homo_logo.dart';
import 'package:sonrize_web/ui/core/menu/menu_item.dart';
import 'package:sonrize_web/ui/core/menu/theme_switch.dart';

class CustomMenuBar extends StatelessWidget {
  const CustomMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: const Row(
        children: [
          HomeLogo(),
          ThemeSwitch(),
          Spacer(),
          MenuItem(
            text: "About Me",
            path: "/${ConstString.ABOUT_ROUTE}",
          ),
          MenuItem(text: "Product", path: "/${ConstString.PRODUCT_ROUTE}"),
          MenuItem(text: "Contact", path: "/${ConstString.CONTACT_ROUTE}"),
        ],
      ),
    );
  }
}
