import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonrize_web/core/values/values.dart';
import 'package:sonrize_web/ui/core/providers/utility_provider.dart';
import 'package:sonrize_web/ui/screens/home/widgets/about_section/about_section.dart';
import 'package:sonrize_web/ui/screens/home/widgets/upbeam_section/upbeam_section.dart';
import 'package:sonrize_web/ui/screens/home/widgets/product_section/product_section.dart';
import 'package:sonrize_web/ui/screens/home/widgets/header_section/header_section.dart';
import 'package:sonrize_web/ui/screens/home/widgets/portfolio_section/portfolio_section.dart';
import 'package:sonrize_web/ui/screens/home/widgets/services_section/services_section.dart';
import 'package:sonrize_web/ui/screens/screen_template.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var utilityProvider;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //pre caching images for faster load time of website
    precacheImage(Image.asset(ImagePath.SONRIZE_LOGO).image, context);
  }

  @override
  void dispose() {
    utilityProvider
        .dispose(); // Hier die dispose-Methode aufrufen, um Ressourcen freizugeben
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    utilityProvider = Provider.of<UtilityProvider>(context);
    List<Widget> sectionList = [
      const HeaderSection(),
      const ServicesSection(),
      const AboutSection(),
      const ProductSection(),
      const PortfolioSection(),
      const UpBeamSection(),
    ];

    return ScreenTemplate(
      child: ListView.builder(
          controller: utilityProvider.getScrollController(),
          primary: false,
          physics: const BouncingScrollPhysics(),
          itemCount: sectionList.length,
          itemBuilder: (context, index) {
            return sectionList[index];
          }),
    );
  }
}
