
import 'package:flutter/material.dart';
import 'package:sonrize_web/ui/screens/screen_template.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> sectionList = [

    ];

    return ScreenTemplate(
      child: ListView.builder(
        itemCount: sectionList.length,
        itemBuilder: (context, index) {
          return sectionList[index];
        }),

    );
  }
}