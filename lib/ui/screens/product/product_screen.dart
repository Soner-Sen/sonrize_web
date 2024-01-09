import 'package:flutter/material.dart';
import 'package:sonrize_web/ui/screens/product/widgets/product_body.dart';
import 'package:sonrize_web/ui/screens/product/widgets/product_header.dart';
import 'package:sonrize_web/ui/screens/screen_template.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Widget> sectionList = [const ProductHeader(), const ProductBody()];

  @override
  Widget build(BuildContext context) {
    return ScreenTemplate(
      child: ListView.builder(
          primary: false,
          physics: const BouncingScrollPhysics(),
          itemCount: sectionList.length,
          itemBuilder: (context, index) {
            return sectionList[index];
          }),
    );
  }
}
