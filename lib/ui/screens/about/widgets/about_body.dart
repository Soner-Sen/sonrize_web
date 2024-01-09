import 'package:flutter/material.dart';
import 'package:sonrize_web/core/values/values.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AboutTitleDescriptionImageWidget();
  }
}

class AboutTitleDescriptionImageWidget extends StatelessWidget {
  const AboutTitleDescriptionImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50),
        TitleLeftRow(
            title: ConstString.About_ME_TITLE_1,
            description: ConstString.About_ME_DESCRIPTION_1,
            imagePath: ImagePath.ABOUT_IMG_1),
        SizedBox(height: 50),
        TitleRightRow(
          title: ConstString.About_ME_TITLE_2,
          description: ConstString.About_ME_DESCRIPTION_2,
          imagePath: ImagePath.ABOUT_IMG_2,
        ),
        SizedBox(height: 50),
        TitleLeftRow(
            title: ConstString.About_ME_TITLE_3,
            description: ConstString.About_ME_DESCRIPTION_3,
            imagePath: ImagePath.ABOUT_IMG_3),
        SizedBox(height: 50),
        TitleRightRow(
          title: ConstString.About_ME_TITLE_4,
          description: ConstString.About_ME_DESCRIPTION_4,
          imagePath: ImagePath.ABOUT_IMG_4,
        ),
        SizedBox(height: 50),
        TitleLeftRow(
            title: ConstString.About_ME_TITLE_5,
            description: ConstString.About_ME_DESCRIPTION_5,
            imagePath: ImagePath.ABOUT_IMG_5),
        SizedBox(height: 50),
      ],
    );
  }
}

class TitleRightRow extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  const TitleRightRow({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            imagePath,
            height: 200,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 8),
                SelectableText(description,
                    style: const TextStyle(height: 1.5)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TitleLeftRow extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const TitleLeftRow({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 8),
                SelectableText(
                  description,
                  style: const TextStyle(height: 1.5),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 2,
          child: Image.asset(
            imagePath,
            height: 200,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
