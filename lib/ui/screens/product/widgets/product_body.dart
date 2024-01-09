import 'package:flutter/material.dart';
import 'package:sonrize_web/core/values/values.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ProductTitleDescriptionImageWidget();
  }
}

class ProductTitleDescriptionImageWidget extends StatelessWidget {
  const ProductTitleDescriptionImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50),
        ProductTitleLeftRow(
            title: 'Udemy',
            description:
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
            bucketList: '''
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
''',
            imagePath: ImagePath.PRODUCT_UDEMY),
        SizedBox(height: 30),
        ProductTitleLeftRow(
          title: 'Book',
          description:
              'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kt amet.',
          bucketList: '''
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
    - Lorem ipsum dolor sit amet
''',
          imagePath: ImagePath.PRODUCT_BOOK,
        ),
        SizedBox(height: 30),
      ],
    );
  }
}

class ProductTitleLeftRow extends StatelessWidget {
  final String title;
  final String description;
  final String bucketList;
  final String imagePath;

  const ProductTitleLeftRow({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.bucketList,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width < 1200 ? 16 : 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 1.5),
                ),
                const SizedBox(height: 8),
                SelectableText(
                  description,
                  style: const TextStyle(height: 1.5),
                ),
                const SizedBox(height: 20),
                SelectableText(
                  bucketList,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 1.2),
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
            width: 100,
            height: 100,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
