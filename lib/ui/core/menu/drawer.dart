import 'package:flutter/material.dart';
import 'package:sonrize_web/core/values/values.dart';
import 'package:sonrize_web/ui/core/menu/menu_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 400, horizontal: 50),
      child: Container(
        color: Colors.amber.shade900,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.close,
                          size: 28,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  path: "/${ConstString.ABOUT_ROUTE}",
                  text: "About Me",
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  path: "/${ConstString.PRODUCT_ROUTE}",
                  text: "Product",
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  path: "/${ConstString.CONTACT_ROUTE}",
                  text: "Contact",
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Column(
              children: [
                Spacer(),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
