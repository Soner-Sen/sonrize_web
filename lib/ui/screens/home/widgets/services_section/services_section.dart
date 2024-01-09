import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:sonrize_web/core/utils/responsive.dart';
import 'package:sonrize_web/core/values/values.dart';

List<ServicesCard> cardList = [
  const ServicesCard(
    title: ConstString.SERVICESCARD_TITLE_1,
    subTitle: ConstString.SERVICESCARD_SUBTITLE_1,
    description: ConstString.SERVICESCARD_DESCRIPTION_1,
  ),
  const ServicesCard(
    title: ConstString.SERVICESCARD_TITLE_2,
    subTitle: ConstString.SERVICESCARD_SUBTITLE_2,
    description: ConstString.SERVICESCARD_DESCRIPTION_2,
  ),
  const ServicesCard(
    title: ConstString.SERVICESCARD_TITLE_3,
    subTitle: ConstString.SERVICESCARD_SUBTITLE_3,
    description: ConstString.SERVICESCARD_DESCRIPTION_3,
  ),
  const ServicesCard(
    title: ConstString.SERVICESCARD_TITLE_4,
    subTitle: ConstString.SERVICESCARD_SUBTITLE_4,
    description: ConstString.SERVICESCARD_DESCRIPTION_4,
  ),
  const ServicesCard(
    title: ConstString.SERVICESCARD_TITLE_5,
    subTitle: ConstString.SERVICESCARD_SUBTITLE_5,
    description: ConstString.SERVICESCARD_DESCRIPTION_5,
  ),
  const ServicesCard(
    title: ConstString.SERVICESCARD_TITLE_6,
    subTitle: ConstString.SERVICESCARD_SUBTITLE_6,
    description: ConstString.SERVICESCARD_DESCRIPTION_6,
  ),
];

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Text(
          ConstString.SERVICES_HEADLINE,
          style: textTheme.headlineLarge!
              .copyWith(fontSize: Sizes.s48, letterSpacing: 1.5),
        ),
        const Gap(Sizes.s48),
        const Responsive(
          mobile: ServiceSectionMobile(),
          tablet: ServiceSectionTablet(),
          desktop: ServiceSectionDesktop(),
        ),
      ],
    );
  }
}

class ServicesCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String description;

  final double? fontSizeTitle;
  final double? fontSizeDescription;

  const ServicesCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.description,
    this.fontSizeTitle,
    this.fontSizeDescription,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(Sizes.s16),
      child: InkWell(
        borderRadius: BorderRadius.circular(Sizes.s12),
        onTap: () {
          context.go("/${ConstString.CONTACT_ROUTE}");
        },
        child: Card(
          elevation: Sizes.s20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(Sizes.s32),
              Center(
                  child: Text(
                title,
                style: textTheme.headlineMedium!.copyWith(letterSpacing: 1.5),
              )),
              const Gap(Sizes.s20),
              Center(
                  child: Text(
                subTitle,
                style:
                    textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
              )),
              const Gap(Sizes.s20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s16),
                child: Text(description,
                    textAlign: TextAlign.left,
                    maxLines: width < 650 ? 5 : 20,
                    style: textTheme.bodyLarge!.copyWith(height: 1.4)),
              ),
              const Gap(Sizes.s32),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceSectionMobile extends StatelessWidget {
  const ServiceSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: cardList.map((card) => card).toList(),
      ),
    );
  }
}

class ServiceSectionTablet extends StatelessWidget {
  const ServiceSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<T>> partition<T>(List<T> list, int size) {
      return List.generate((list.length / size).ceil(),
          (i) => list.skip(i * size).take(size).toList());
    }

    var rows = partition(cardList, 2);

    return Column(
      children: rows.map((row) {
        return IntrinsicHeight(
          child: Row(
            children: row.map((card) => Expanded(child: card)).toList(),
          ),
        );
      }).toList(),
    );
  }

  List<List<T>> partition<T>(List<T> list, int size) {
    return List.generate((list.length / size).ceil(),
        (i) => list.skip(i * size).take(size).toList());
  }
}

class ServiceSectionDesktop extends StatelessWidget {
  const ServiceSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<T>> partition<T>(List<T> list, int size) {
      return List.generate((list.length / size).ceil(),
          (i) => list.skip(i * size).take(size).toList());
    }

    var rows = partition(cardList, 3);

    return Column(
      children: rows.map((row) {
        return IntrinsicHeight(
          child: Row(
            children: row.map((card) => Expanded(child: card)).toList(),
          ),
        );
      }).toList(),
    );
  }

  List<List<T>> partition<T>(List<T> list, int size) {
    return List.generate((list.length / size).ceil(),
        (i) => list.skip(i * size).take(size).toList());
  }
}
