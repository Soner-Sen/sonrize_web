import 'package:flutter/material.dart';
import 'package:sonrize_web/ui/screens/about/widgets/about_body.dart';
import 'package:sonrize_web/ui/screens/about/widgets/about_header.dart';
import 'package:sonrize_web/ui/screens/screen_template.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  List<Widget> sectionList = [
    const AboutHeader(),
    const AboutBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(
      child: ListView.builder(
          primary: false,
          physics: const BouncingScrollPhysics(),
          itemCount: sectionList.length,
          itemBuilder: (context, index) {
            return sectionList[index];
          }),
    );
  }
}
