import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuItem extends StatelessWidget {
  final String text;
  final String path;
  const MenuItem({super.key, required this.text, required this.path});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () {
          (context).go(path);
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
