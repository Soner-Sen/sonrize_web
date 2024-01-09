import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sonrize_web/core/values/values.dart';
import 'package:url_launcher/url_launcher.dart';

class IconRow extends StatelessWidget {
  final List<String> urls = [
    'https://github.com/Soner-Sen',
    'https://www.linkedin.com/in/soner-sen/',
    'https://www.xing.com/profile/Soner_Sen9/web_profiles?expandNeffi=true',
    'https://www.youtube.com/channel/UCPdnHRYn6hd_hHjETiTwm5g',
    'https://www.instagram.com/sonrize_dev/',
    'https://twitter.com/SonrizeDev',
  ];

  final List<IconData> icons = [
    FontAwesomeIcons.github,
    FontAwesomeIcons.linkedin,
    FontAwesomeIcons.xing,
    FontAwesomeIcons.youtube,
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.twitter,
  ];

  IconRow({super.key});

  Future<void> _launchURL(String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      throw '$url $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(6, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.s4),
          child: IconButton(
            icon: Icon(icons[index]),
            onPressed: () => _launchURL(urls[index]),
          ),
        );
      }),
    );
  }
}
