import 'package:flutter/material.dart';
import 'package:sonrize_web/core/utils/responsive.dart';
import 'package:sonrize_web/core/values/values.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ProductHeaderSectionMobile(),
      tablet: ProductHeaderSectionTablet(),
      desktop: ProductHeaderSectionDesktop(),
    );
  }
}

class ProductHeaderSectionDesktop extends StatelessWidget {
  const ProductHeaderSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 238, 232, 225),
      width: double.infinity,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Flexible(
          child: Stack(
            children: [
              Image.asset(
                ImagePath.PRODUCT_HEADER_LEFT,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
        Flexible(
          child: Stack(
            children: [
              Image.asset(
                ImagePath.PRODUCT_HEADER_RIGHT,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class ProductHeaderSectionMobile extends StatelessWidget {
  const ProductHeaderSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 238, 232, 225),
      width: double.infinity,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    ImagePath.PRODUCT_HEADER_LEFT,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    ImagePath.PRODUCT_HEADER_RIGHT,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}

class ProductHeaderSectionTablet extends StatelessWidget {
  const ProductHeaderSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 238, 232, 225),
      width: double.infinity,
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    ImagePath.PRODUCT_HEADER_LEFT,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    ImagePath.PRODUCT_HEADER_RIGHT,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
