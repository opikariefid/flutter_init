import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color appPrimary = Color(0xFF3498db);
  static const Color textPrimary = Colors.white;
  static const Color appPrimary2 = Color(0xFF1E8EE3);
  static const Color appAccent = Color(0xFFDDEFFF);
  static const Color appAccent2 = Color(0xFFB4DBFF);
  static const Color appWarning = Color(0xFFf1c40f);
  static const Color appSuccess = Color(0xFF2ecc71);
  static const Color appDanger = Color(0xFFe74c3c);
  static const Color background = Colors.white;
  static const Color surface = Color(0xFFF4F4F4);
  static const Color primary = appPrimary;
  static const Color secondary = appAccent;
  static const Color backgroundDark = Color(0xFF212121);
  static const Color surfaceDark = Color(0xFF333333);
  static const Color primaryDark = Color(0xFF002EA6);
  static const Color secondaryDark = appAccent;
  static const Color text = Colors.white;
  static const Color textDark = Colors.black;

  static Color switchColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
      MaterialState.selected,
    };
    if (states.any(interactiveStates.contains)) {
      return appPrimary;
    }
    return const Color(0xFFCBCBCB);
  }
}

class AppVariables {
  static const EdgeInsets containerPadding = EdgeInsets.only(
    left: 15,
    right: 15,
  );
}

bool isDarkMode() {
  var brightness = SchedulerBinding.instance!.window.platformBrightness;
  bool isDarkMode = brightness == Brightness.dark;
  return isDarkMode;
}

ThemeData darkTheme(context) {
  var textTheme = GoogleFonts.poppinsTextTheme(
    Theme.of(context)
        .textTheme
        .apply(
          displayColor: AppColors.text,
          bodyColor: AppColors.background,
        )
        .copyWith(
          subtitle1: const TextStyle(
            color: Colors.white,
          ),
        ),
  );
  final ColorScheme colorSceme = Theme.of(context).colorScheme.copyWith(
        primary: AppColors.primaryDark,
        secondary: AppColors.secondaryDark,
        background: AppColors.backgroundDark,
        surface: AppColors.surfaceDark,
      );
  const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    fillColor: AppColors.surfaceDark,
    hintStyle: TextStyle(color: AppColors.appAccent),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    ),
  );
  TabBarTheme tabBarTheme = TabBarTheme(
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2.0,
      ),
    ),
    labelColor: Colors.white,
    labelStyle: GoogleFonts.poppins(
      fontSize: Get.width / 30,
      color: Colors.white,
    ),
    unselectedLabelColor: Colors.white.withAlpha(100),
    unselectedLabelStyle: GoogleFonts.poppins(
      fontSize: Get.width / 30,
      color: Colors.white.withAlpha(100),
    ),
  );
  return ThemeData(
    tabBarTheme: tabBarTheme,
    inputDecorationTheme: inputDecorationTheme,
    textTheme: textTheme,
    colorScheme: colorSceme,
    errorColor: AppColors.appDanger,
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.resolveWith(AppColors.switchColor),
      thumbColor: MaterialStateProperty.resolveWith(AppColors.switchColor),
    ),
  );
}

ThemeData lightTheme(context) {
  final defaultTextStyle = TextStyle(
    color: AppColors.textDark,
  );
  final textTheme = GoogleFonts.poppinsTextTheme(
    Theme.of(context)
        .textTheme
        .apply(
          displayColor: AppColors.textDark,
          bodyColor: AppColors.backgroundDark,
        )
        .copyWith(
          headline1: defaultTextStyle.copyWith(
            fontSize: Get.width / 8,
          ),
          headline2: defaultTextStyle.copyWith(
            fontSize: Get.width / 10,
          ),
          headline3: defaultTextStyle.copyWith(
            fontSize: Get.width / 12,
          ),
          headline4: defaultTextStyle.copyWith(
            fontSize: Get.width / 14,
          ),
          headline5: defaultTextStyle.copyWith(
            fontSize: Get.width / 16,
          ),
          headline6: defaultTextStyle.copyWith(
            fontSize: Get.width / 18,
          ),
          subtitle1: defaultTextStyle.copyWith(
            fontSize: Get.width / 22,
          ),
          subtitle2: defaultTextStyle.copyWith(
            fontSize: Get.width / 22,
          ),
          caption: defaultTextStyle.copyWith(
            fontSize: Get.width / 28,
          ),
          overline: defaultTextStyle.copyWith(
            fontSize: Get.width / 35,
          ),
          button: defaultTextStyle.copyWith(
            fontSize: Get.width / 25,
          ),
          bodyText1: defaultTextStyle.copyWith(
            fontSize: Get.width / 22,
          ),
          bodyText2: defaultTextStyle.copyWith(
            fontSize: Get.width / 22,
          ),
        ),
  );
  final ColorScheme colorSceme = Theme.of(context).colorScheme.copyWith(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        background: AppColors.background,
        surface: AppColors.surface,
      );
  const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    fillColor: AppColors.appAccent,
    hintStyle: TextStyle(color: AppColors.appPrimary2),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent,
      ),
    ),
  );
  TabBarTheme tabBarTheme = TabBarTheme(
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 2.0,
      ),
    ),
    labelColor: AppColors.primary,
    labelStyle: GoogleFonts.poppins(
      fontSize: Get.width / 30,
      color: AppColors.primary,
    ),
    unselectedLabelColor: AppColors.primary.withAlpha(100),
    unselectedLabelStyle: GoogleFonts.poppins(
      fontSize: Get.width / 30,
      color: AppColors.primary.withAlpha(100),
    ),
  );
  return ThemeData(
    tabBarTheme: tabBarTheme,
    inputDecorationTheme: inputDecorationTheme,
    textTheme: textTheme,
    colorScheme: colorSceme,
    errorColor: AppColors.appDanger,
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.resolveWith(AppColors.switchColor),
      thumbColor: MaterialStateProperty.resolveWith(AppColors.switchColor),
    ),
  );
}
