import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sonrize_web/core/values/values.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () {
            (context).go('/');
          },
          child: const Icon(
            Icons.home,
            color: Colors.blueAccent,
            size: 35,
          )),
    );
  }
}
