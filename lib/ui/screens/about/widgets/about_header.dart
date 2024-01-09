import 'package:flutter/material.dart';
import 'package:sonrize_web/core/utils/responsive.dart';
import 'package:sonrize_web/core/values/values.dart';

class AboutHeader extends StatelessWidget {
  const AboutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: AboutHeaderSectionMobile(),
      tablet: AboutHeaderSectionTablet(),
      desktop: AboutHeaderSectionDesktop(),
    );
  }
}

class AboutHeaderSectionDesktop extends StatelessWidget {
  const AboutHeaderSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      color: const Color.fromARGB(255, 238, 232, 225),
      width: double.infinity,
      height: height * 0.9,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            ImagePath.ABOUT_HEADER,
            fit: BoxFit.fitHeight,
          ),
          const Center(
            child: Text(
              ConstString.ABOUT_HEADLINE,
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutHeaderSectionMobile extends StatelessWidget {
  const AboutHeaderSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: height * 0.9,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            ImagePath.ABOUT_HEADER,
            fit: BoxFit.fitHeight,
          ),
          const Center(
            child: Text(
              ConstString.ABOUT_HEADLINE,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutHeaderSectionTablet extends StatelessWidget {
  const AboutHeaderSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: height * 0.9,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            ImagePath.ABOUT_HEADER,
            fit: BoxFit.fitHeight,
          ),
          const Center(
            child: Text(
              ConstString.ABOUT_HEADLINE,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
