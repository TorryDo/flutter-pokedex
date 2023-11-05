import 'package:flutter/material.dart';
import 'package:pokedex/configs/colors.dart';

import 'fonts.dart';

class Themings {
  static const TextStyle darkText = TextStyle(
    color: AppColors.whiteGrey,
    fontFamily: AppFonts.circularStd,
  );

  static const TextStyle lightText = TextStyle(
    color: AppColors.black,
    fontFamily: AppFonts.circularStd,
  );

  // static final ThemeData darkTheme = ThemeData(
  //   visualDensity: VisualDensity.adaptivePlatformDensity,
  //   colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
  //       .copyWith(secondary: Colors.blueAccent, brightness: Brightness.dark),
  //   switchTheme: SwitchThemeData(
  //     thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //       if (states.contains(MaterialState.disabled)) {
  //         return null;
  //       }
  //       if (states.contains(MaterialState.selected)) {
  //         return Colors.blue;
  //       }
  //       return null;
  //     }),
  //     trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //       if (states.contains(MaterialState.disabled)) {
  //         return null;
  //       }
  //       if (states.contains(MaterialState.selected)) {
  //         return Colors.blue;
  //       }
  //       return null;
  //     }),
  //   ),
  //   radioTheme: RadioThemeData(
  //     fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //       if (states.contains(MaterialState.disabled)) {
  //         return null;
  //       }
  //       if (states.contains(MaterialState.selected)) {
  //         return Colors.blue;
  //       }
  //       return null;
  //     }),
  //   ),
  //   checkboxTheme: CheckboxThemeData(
  //     fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
  //       if (states.contains(MaterialState.disabled)) {
  //         return null;
  //       }
  //       if (states.contains(MaterialState.selected)) {
  //         return Colors.blue;
  //       }
  //       return null;
  //     }),
  //   ),
  //
  //   secondaryHeaderColor: Colors.black54,
  // );

  static final ThemeData darkTheme = ThemeData(

    brightness: Brightness.dark,
    primaryColor: AppColors.blue,
    appBarTheme: const AppBarTheme(
      toolbarTextStyle: lightText,
    ),
    textTheme: const TextTheme(
      bodyLarge: darkText,
      bodyMedium: darkText,
      labelMedium: darkText,
      bodySmall: darkText,
      labelLarge: darkText,
      labelSmall: darkText,
    ),
    // sdfasdfjhasdjkfhladskjfhalsdkjfhaklsdjfhalskdjfh
    visualDensity: VisualDensity.adaptivePlatformDensity,
    secondaryHeaderColor: Colors.black54,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        .copyWith(secondary: Colors.blueAccent, brightness: Brightness.dark),
  );

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.blue,
    appBarTheme: const AppBarTheme(
      toolbarTextStyle: lightText,
    ),
    textTheme: const TextTheme(
      bodyLarge: lightText,
      bodyMedium: lightText,
      labelMedium: lightText,
      bodySmall: lightText,
      labelLarge: lightText,
      labelSmall: lightText,
    ),
    scaffoldBackgroundColor: AppColors.lightGrey,
    secondaryHeaderColor: Colors.white,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
        .copyWith(background: AppColors.whiteGrey),
  );
}
