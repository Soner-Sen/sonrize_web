import 'package:url_launcher/url_launcher.dart';

class LaunchUrlHelper {
  LaunchUrlHelper._();

  static Future<void> launchURL(String url) async {
    try {
      await launchUrl(Uri.parse(url));
    } catch (e) {
      throw '$url $e';
    }
  }
}
