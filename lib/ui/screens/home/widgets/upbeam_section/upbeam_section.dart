import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sonrize_web/core/values/values.dart';
import 'package:sonrize_web/ui/core/providers/utility_provider.dart';

class UpBeamSection extends StatelessWidget {
  const UpBeamSection({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var utilityProvider = Provider.of<UtilityProvider>(context);
    late ScrollController scrollControllerDesktop =
        utilityProvider.getScrollController();
    return SizedBox(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Gap(Sizes.s64),
          websiteIcon(scrollControllerDesktop),
          const Gap(Sizes.s64),
        ],
      ),
    );
  }
}

Widget websiteIcon(ScrollController scrollController) {
  return InkWell(
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
    highlightColor: Colors.transparent,
    onTap: () async {
      await scrollController.animateTo(
          scrollController.position.minScrollExtent,
          duration: const Duration(seconds: 1),
          curve: Curves.ease);
    },
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImagePath.ARROW_UP,
          height: 100,
        ),
        const Gap(Sizes.s24),
        Text(
          ConstString.BEAM_UP_TEXT,
          style: GoogleFonts.poppins(
              fontSize: Sizes.s24, fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
