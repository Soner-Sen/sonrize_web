import 'package:flutter/material.dart';
import 'package:sonrize_web/app.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //UrlPathStrategy dann müssen wir nicht # schreiben 
  setPathUrlStrategy();
  // EasyLocalization.logger.enableBuildModes = [];
  // await EasyLocalization.ensureInitialized();
runApp(const MainApp());
}

