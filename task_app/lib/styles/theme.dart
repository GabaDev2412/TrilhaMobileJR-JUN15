//lib/styles/theme.dart
import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff000000),
      surfaceTint: Color(0xff5e5e5e),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff262626),
      onPrimaryContainer: Color(0xffb1b1b1),
      secondary: Color(0xffa5000d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdb332e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff373737),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5a5a5a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffa5000d),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffdb332e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9f9),
      onSurface: Color(0xff1b1b1b),
      onSurfaceVariant: Color(0xff444748),
      outline: Color(0xff747878),
      outlineVariant: Color(0xffc4c7c8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff303030),
      inversePrimary: Color(0xffc6c6c6),
      primaryFixed: Color(0xffe2e2e2),
      onPrimaryFixed: Color(0xff1b1b1b),
      primaryFixedDim: Color(0xffc6c6c6),
      onPrimaryFixedVariant: Color(0xff474747),
      secondaryFixed: Color(0xffffdad6),
      onSecondaryFixed: Color(0xff410002),
      secondaryFixedDim: Color(0xffffb4ab),
      onSecondaryFixedVariant: Color(0xff93000a),
      tertiaryFixed: Color(0xffe4e2e2),
      onTertiaryFixed: Color(0xff1b1c1c),
      tertiaryFixedDim: Color(0xffc8c6c6),
      onTertiaryFixedVariant: Color(0xff474747),
      surfaceDim: Color(0xffdadada),
      surfaceBright: Color(0xfff9f9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f3f3),
      surfaceContainer: Color(0xffeeeeee),
      surfaceContainerHigh: Color(0xffe8e8e8),
      surfaceContainerHighest: Color(0xffe2e2e2),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc6c6c6),
      surfaceTint: Color(0xffc6c6c6),
      onPrimary: Color(0xff303030),
      primaryContainer: Color(0xff000000),
      onPrimaryContainer: Color(0xff969696),
      secondary: Color(0xffdb332e),
      onSecondary: Color(0xff690005),
      secondaryContainer: Color(0xffd9322d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xffc8c6c6),
      onTertiary: Color(0xff303030),
      tertiaryContainer: Color(0xff414141),
      onTertiaryContainer: Color(0xffd8d6d6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xffd9322d),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xff131313),
      onSurface: Color(0xffe2e2e2),
      onSurfaceVariant: Color(0xffc4c7c8),
      outline: Color(0xff8e9192),
      outlineVariant: Color(0xff444748),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e2e2),
      inversePrimary: Color(0xff5e5e5e),
      primaryFixed: Color(0xffe2e2e2),
      onPrimaryFixed: Color(0xff1b1b1b),
      primaryFixedDim: Color(0xffc6c6c6),
      onPrimaryFixedVariant: Color(0xff474747),
      secondaryFixed: Color(0xffffdad6),
      onSecondaryFixed: Color(0xff410002),
      secondaryFixedDim: Color(0xffffb4ab),
      onSecondaryFixedVariant: Color(0xff93000a),
      tertiaryFixed: Color(0xffe4e2e2),
      onTertiaryFixed: Color(0xff1b1c1c),
      tertiaryFixedDim: Color(0xffc8c6c6),
      onTertiaryFixedVariant: Color(0xff474747),
      surfaceDim: Color(0xff131313),
      surfaceBright: Color(0xff393939),
      surfaceContainerLowest: Color(0xff0e0e0e),
      surfaceContainerLow: Color(0xff1b1b1b),
      surfaceContainer: Color(0xff1f1f1f),
      surfaceContainerHigh: Color(0xff2a2a2a),
      surfaceContainerHighest: Color(0xff353535),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.surface,
     canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily dark;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.dark
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
