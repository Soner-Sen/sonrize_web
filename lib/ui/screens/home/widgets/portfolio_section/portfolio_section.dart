import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sonrize_web/core/utils/responsive.dart';
import 'package:sonrize_web/core/values/values.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: MobilePortfolioScreen(),
      tablet: TabletPortfolioScreen(),
      desktop: DesktopPortfolioScreen(),
    );
  }
}

class DesktopPortfolioScreen extends StatelessWidget {
  const DesktopPortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.08 * width),
      child: Row(
        children: [
          SingleChildScrollView(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              workShowCaseImages(
                  0.6 * height, 0.39 * width, ImagePath.SHOWCASE_1),
              const Gap(Sizes.s64),
              workShowCaseImages(
                  0.6 * height, 0.39 * width, ImagePath.SHOWCASE_2),
              const Gap(Sizes.s64),
            ]),
          ),
          const Gap(Sizes.s64),
          Container(
            margin: const EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mySelectedWorkWidget(Sizes.s40),
                const Gap(Sizes.s64),
                workShowCaseImages(
                    0.6 * height, 0.39 * width, ImagePath.SHOWCASE_3),
                const Gap(Sizes.s64),
                workShowCaseImages(
                    0.6 * height, 0.39 * width, ImagePath.SHOWCASE_4),
                const Gap(Sizes.s64),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TabletPortfolioScreen extends StatelessWidget {
  const TabletPortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      //height: height,
      padding: EdgeInsets.only(left: 0.08 * width),
      child: Row(
        children: [
          SingleChildScrollView(
            primary: false,
            physics: const NeverScrollableScrollPhysics(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              const Gap(Sizes.s64),
              workShowCaseImages(400, 0.4 * width, ImagePath.SHOWCASE_1),
              const Gap(Sizes.s20),
              workShowCaseImages(400, 0.4 * width, ImagePath.SHOWCASE_2),
              const Gap(Sizes.s32),
            ]),
          ),
          const Gap(Sizes.s20),
          Container(
            margin: const EdgeInsets.only(top: Sizes.s40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(Sizes.s64),
                mySelectedWorkWidget(Sizes.s32),
                const Gap(Sizes.s64),
                workShowCaseImages(400, 0.4 * width, ImagePath.SHOWCASE_3),
                const Gap(Sizes.s20),
                workShowCaseImages(400, 0.4 * width, ImagePath.SHOWCASE_4),
                const Gap(Sizes.s20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobilePortfolioScreen extends StatelessWidget {
  const MobilePortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: const EdgeInsets.only(left: Sizes.s20, right: Sizes.s20),
      child: SingleChildScrollView(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(Sizes.s32),
            Center(child: mySelectedWorkWidget((Sizes.s32))),
            const Gap(Sizes.s32),
            workShowCaseImages(350, 0.9 * width, ImagePath.SHOWCASE_1),
            const Gap(Sizes.s20),
            workShowCaseImages(350, 0.9 * width, ImagePath.SHOWCASE_2),
            const Gap(Sizes.s20),
            workShowCaseImages(350, 0.9 * width, ImagePath.SHOWCASE_3),
            const Gap(Sizes.s20),
          ],
        ),
      ),
    );
  }
}

Widget mySelectedWorkWidget(double fontSize) {
  return Text('Latest Projects',
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold));
}

Widget workShowCaseImages(
    double imageHeight, double imageWidth, String imageUrl) {
  return Material(
    //color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    elevation: Sizes.s20,
    child: Container(
        width: imageWidth,
        height: imageHeight,
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.s8, vertical: Sizes.s8),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(Sizes.s12)),
        child: Image(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        )),
  );
}
