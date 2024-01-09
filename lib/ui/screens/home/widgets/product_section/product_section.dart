import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sonrize_web/core/utils/responsive.dart';
import 'package:sonrize_web/core/values/values.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const Gap(Sizes.s48),
        Text(
          ConstString.COURSES_HEADLINE,
          style: textTheme.headlineLarge!
              .copyWith(fontSize: Sizes.s48, letterSpacing: 1.5),
        ),
        const Gap(Sizes.s48),
        const Responsive(
          mobile: ProductSectionMobile(),
          tablet: ProductSectionTablet(),
          desktop: ProductSectionDesktop(),
        ),
      ],
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String release;
  final String url;
  final String imagePath;

  const CourseCard(
      {super.key,
      required this.title,
      required this.url,
      required this.imagePath,
      required this.release});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return InkWell(
      borderRadius: BorderRadius.circular(Sizes.s16),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.s16),
        child: SizedBox(
          width: double.infinity,
          child: Card(
            child: Column(
              children: [
                const Gap(Sizes.s20),
                Text(
                  title,
                  style: textTheme.headlineLarge,
                ),
                const Gap(Sizes.s12),
                Text(release, style: textTheme.bodyMedium),
                const Gap(Sizes.s20),
                Image.asset(
                  imagePath,
                  height: 200,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductSectionMobile extends StatelessWidget {
  const ProductSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CourseCard(
            title: ConstString.COURSES_FIRST_TITLE,
            url: ConstString.COURSES_FIRST_URL,
            imagePath: ImagePath.PRODUCT_UDEMY,
            release: ConstString.COURSES_FIRST_RELEASE),
        CourseCard(
            title: ConstString.COURSES_SECOND_TITLE,
            url: ConstString.COURSES_SECOND_URL,
            imagePath: ImagePath.PRODUCT_BOOK,
            release: ConstString.COURSES_SECOND_RELEASE)
      ],
    );
  }
}

class ProductSectionTablet extends StatelessWidget {
  const ProductSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Flexible(
          child: CourseCard(
              title: ConstString.COURSES_FIRST_TITLE,
              url: ConstString.COURSES_FIRST_URL,
              imagePath: ImagePath.PRODUCT_UDEMY,
              release: ConstString.COURSES_FIRST_RELEASE),
        ),
        Flexible(
            child: CourseCard(
                title: ConstString.COURSES_SECOND_TITLE,
                url: ConstString.COURSES_SECOND_URL,
                imagePath: ImagePath.PRODUCT_BOOK,
                release: ConstString.COURSES_SECOND_RELEASE))
      ],
    );
  }
}

class ProductSectionDesktop extends StatelessWidget {
  const ProductSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CourseCard(
              title: ConstString.COURSES_FIRST_TITLE,
              url: ConstString.COURSES_FIRST_URL,
              imagePath: ImagePath.PRODUCT_UDEMY,
              release: ConstString.COURSES_FIRST_RELEASE),
        ),
        Expanded(
            child: CourseCard(
                title: ConstString.COURSES_SECOND_TITLE,
                url: ConstString.COURSES_SECOND_URL,
                imagePath: ImagePath.PRODUCT_BOOK,
                release: ConstString.COURSES_SECOND_RELEASE))
      ],
    );
  }
}
