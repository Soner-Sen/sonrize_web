import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sonrize_web/core/utils/launch_url_helper.dart';
import 'package:sonrize_web/core/utils/responsive.dart';
import 'package:sonrize_web/core/values/values.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HeaderSectionMobile(),
      tablet: HeaderSectionTablet(),
      desktop: HeaderSectionDesktop(),
    );
  }
}

class HeaderSectionDesktop extends StatelessWidget {
  const HeaderSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
        height: height, width: width, child: bubbleBackground(height, width));
    ;
  }
}

class HeaderSectionMobile extends StatelessWidget {
  const HeaderSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        padding: const EdgeInsets.only(
            top: Sizes.s20, left: Sizes.s20, right: Sizes.s20),
        width: width,
        child: Column(
          children: [
            leftHeaderSide(Sizes.s40, Sizes.s16),
            const SizedBox(
              height: Sizes.s40,
            ),
            const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(Sizes.s8)),
              child: Image(
                image: AssetImage(ImagePath.SONRIZE_LOGO),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ));
  }
}

class HeaderSectionTablet extends StatelessWidget {
  const HeaderSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      child: tabletViewWidget(width, height),
    );
  }
}

Widget leftHeaderSide(double nameFontSize, double descFontSize) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        ConstString.HOME_HEADER_GREETING,
        style: TextStyle(fontSize: nameFontSize, fontWeight: FontWeight.w600),
      ),
      Text(
        ConstString.HOME_HEADER_MYNAME,
        style: TextStyle(fontSize: nameFontSize, fontWeight: FontWeight.w600),
      ),
      Text(
        ConstString.HOME_HEADER_WHATIDO,
        style: TextStyle(fontSize: descFontSize, color: Colors.blueGrey[400]),
      ),
      const Gap(Sizes.s32),
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconRow(),
        ],
      )
    ],
  );
}

Widget rightHeaderSide(double height, double width) {
  return SizedBox(
    height: 0.5 * height,
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(Sizes.s32)),
      child: Image(
        image: Image.asset(ImagePath.SONRIZE_LOGO).image,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget circleShape(double width, double height, Color color) {
  return Container(
    width: width * 1.2,
    height: height * 1.2,
    decoration: BoxDecoration(
      color: color.withOpacity(0.4),
      shape: BoxShape.circle,
    ),
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color.withOpacity(0.4),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: Sizes.s4,
            blurRadius: Sizes.s12,
            offset: const Offset(-20, -20), // Position des Schattens
          ),
        ],
      ),
    ),
  );
}

//all stacked widgets used for desktop view
Widget bubbleBackground(double height, double width) {
  return Stack(
    children: [
      //random circles
      Positioned(
          top: 0.2 * height,
          left: 0.065 * width,
          child: circleShape(200, 200, Colors.pink)),

      Positioned(
          top: 0.1 * height,
          left: 0.55 * width,
          child: circleShape(60, 60, Colors.blue)),

      Positioned(
          top: 0.1 * height,
          left: 0.35 * width,
          child: circleShape(60, 60, Colors.red)),

      Positioned(
          top: 0.2 * height,
          left: 0.40 * width,
          child: circleShape(300, 300, Colors.amber)),

      Positioned(
          top: 0.65 * height,
          left: 0.35 * width,
          child: circleShape(100, 100, Colors.tealAccent)),

      Positioned(
          top: 0.28 * height,
          left: 0.12 * width,
          child: leftHeaderSide(60, 20)),

      //top yellow circle
      Positioned(
          top: 0.012 * height,
          right: 0.04 * width,
          child: circleShape(200, 200, Colors.purple)),

      Positioned(
          // height: 10 * height,
          // width: 10 * width,
          top: 0.10 * height,
          right: 0.08 * width,
          child: rightHeaderSide(height, width)),
    ],
  );
}

Widget tabletViewWidget(double width, double height) {
  return Container(
      padding: EdgeInsets.only(left: 0.02 * width, right: 0.02 * width),
      width: width,
      child: Column(
        children: [
          leftHeaderSide(50, 20),
          const Gap(Sizes.s64),
          const ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image(
              image: AssetImage(ImagePath.SONRIZE_LOGO),
              fit: BoxFit.cover,
            ),
          ),
          const Gap(Sizes.s32),
        ],
      ));
}
