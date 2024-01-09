import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonrize_web/app.dart';
import 'package:sonrize_web/ui/core/providers/theme_provider.dart';
import 'package:sonrize_web/ui/core/providers/utility_provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //UrlPathStrategy dann müssen wir nicht # schreiben
  setPathUrlStrategy();
  // EasyLocalization.logger.enableBuildModes = [];
  // await EasyLocalization.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<UtilityProvider>(create: (_) => UtilityProvider()),
    ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider())
  ], child: const MainApp()));
}
