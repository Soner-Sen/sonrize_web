import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sonrize_web/core/utils/responsive.dart';
import 'package:sonrize_web/core/values/values.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        const Gap(Sizes.s48),
        Text(
          ConstString.ABOUT_HEADLINE,
          style: textTheme.headlineLarge!
              .copyWith(fontSize: Sizes.s48, letterSpacing: 1.5),
        ),
        const Gap(Sizes.s48),
        const Responsive(
          mobile: AboutSectionMobile(),
          tablet: AboutSectionTablet(),
          desktop: AboutSectionDesktop(),
        ),
      ],
    );
  }
}

class AboutSectionMobile extends StatelessWidget {
  const AboutSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s16),
      child: SizedBox(
        height: 550,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Card(
                elevation: Sizes.s20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(Sizes.s20),
                    Padding(
                      padding: const EdgeInsets.only(left: Sizes.s16),
                      child: Text(
                        ConstString.DEV_NAME,
                        style: textTheme.headlineMedium!
                            .copyWith(letterSpacing: 1.5),
                      ),
                    ),
                    const Gap(Sizes.s20),
                    Padding(
                      padding: const EdgeInsets.only(left: Sizes.s16),
                      child: Text(
                        ConstString.WHATIAM,
                        style: textTheme.bodyLarge!
                            .copyWith(height: 1.5, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Gap(Sizes.s32),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Sizes.s16),
                      child: Text(
                        ConstString.WHOIAM,
                        maxLines: 14,
                        overflow: TextOverflow.ellipsis,
                        style: textTheme.bodyLarge!.copyWith(height: 1.4),
                      ),
                    ),
                    const Gap(Sizes.s32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutSectionTablet extends StatelessWidget {
  const AboutSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: Sizes.s16),
              child: Card(
                elevation: Sizes.s20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(Sizes.s20),
                    Padding(
                      padding: const EdgeInsets.only(left: Sizes.s16),
                      child: Text(
                        ConstString.DEV_NAME,
                        style: textTheme.headlineMedium!
                            .copyWith(letterSpacing: 1.5),
                      ),
                    ),
                    const Gap(Sizes.s20),
                    Padding(
                      padding: const EdgeInsets.only(left: Sizes.s16),
                      child: Text(
                        ConstString.WHATIAM,
                        style: textTheme.bodyLarge!
                            .copyWith(height: 1.5, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Gap(Sizes.s32),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Sizes.s16),
                      child: Text(
                        ConstString.WHOIAM,
                        textAlign: TextAlign.left,
                        style: textTheme.bodyLarge!.copyWith(height: 1.4),
                      ),
                    ),
                    const Gap(Sizes.s32),
                  ],
                ),
              ),
            )),
        Expanded(
          flex: 3,
          child: Image.asset(
            ImagePath.SELFIE,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}

class AboutSectionDesktop extends StatelessWidget {
  const AboutSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: Sizes.s16),
              child: Card(
                elevation: Sizes.s20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(Sizes.s20),
                    Padding(
                      padding: const EdgeInsets.only(left: Sizes.s16),
                      child: Text(
                        ConstString.DEV_NAME,
                        style: textTheme.headlineMedium!
                            .copyWith(letterSpacing: 1.5),
                      ),
                    ),
                    const Gap(Sizes.s20),
                    Padding(
                      padding: const EdgeInsets.only(left: Sizes.s16),
                      child: Text(
                        ConstString.WHATIAM,
                        style: textTheme.bodyLarge!
                            .copyWith(height: 1.5, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Gap(Sizes.s32),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Sizes.s16),
                      child: Text(
                        ConstString.WHOIAM,
                        style: textTheme.bodyLarge!.copyWith(height: 1.4),
                      ),
                    ),
                    const Gap(Sizes.s32),
                  ],
                ),
              ),
            )),
        Expanded(
          flex: 3,
          child: Image.asset(
            ImagePath.SELFIE,
            fit: BoxFit.fitHeight,
            height: 475,
          ),
        ),
      ],
    );
  }
}
