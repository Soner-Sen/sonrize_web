part of 'values.dart';


class Styles {
  static TextStyle customTextStyle({
    Color color = AppColors.primaryColor,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = Sizes.s14,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.bebasNeue(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle customTextStyle2({
    Color color = AppColors.secondaryColor,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = Sizes.s16,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.bebasNeue(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle customTextStyle3({
    Color color = AppColors.secondaryColor,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = Sizes.s16,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.dancingScript(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle customTextStyle4({
    Color color = AppColors.secondaryColor,
    FontWeight fontWeight = FontWeight.w600,
    double fontSize = Sizes.s16,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return GoogleFonts.notoSerif(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }
}

class AppColors {
  static const double primaryColorOpacity = 0.1;

  static const Color primaryColor = Color(0xFFF9F9F9);
  static const Color secondaryColor = Color(0xFF363636);
  static const Color accentColor = Color(0xFFFFFFFF);
  static const Color accentColor2 = Color(0xFFEEEEEE);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color black100 = Color(0xFF303030);
  static const Color textSelectionColor = Color(0xFF1C00FF);


  static const Color grey = Color(0xFFE1E1E1);
  static const Color grey100 = Color(0xFFE8E8E8);
  static const Color grey300 = Color(0xFFB6B7B9);
  static const Color grey500 = Color(0xFF868585);
  static const Color grey550 = Color(0xFF8F8E8E);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey700 = Color(0xFF515151);
  static const Color grey750 = Color(0xFF474747);
  static const Color grey800 = Color(0xFF3D3D3D);

  // Green
  static const Color lightGreen = Color(0xFFE4FFE1);

  // Red
  static const Color errorRed = Color(0xFFFF2019);
}