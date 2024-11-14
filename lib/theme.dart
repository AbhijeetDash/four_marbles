// ignore_for_file: use_full_hex_values_for_flutter_colors

import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287581238),
      surfaceTint: Color(4287581238),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294958032),
      onPrimaryContainer: Color(4281993984),
      secondary: Color(4286011213),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294958032),
      onSecondaryContainer: Color(4281079310),
      tertiary: Color(4285226543),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294238887),
      onTertiaryContainer: Color(4280425216),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965494),
      onSurface: Color(4280490263),
      onSurfaceVariant: Color(4283646783),
      outline: Color(4286935918),
      outlineVariant: Color(4292395708),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937451),
      inversePrimary: Color(4294948254),
      primaryFixed: Color(4294958032),
      onPrimaryFixed: Color(4281993984),
      primaryFixedDim: Color(4294948254),
      onPrimaryFixedVariant: Color(4285674785),
      secondaryFixed: Color(4294958032),
      onSecondaryFixed: Color(4281079310),
      secondaryFixedDim: Color(4293377457),
      onSecondaryFixedVariant: Color(4284301367),
      tertiaryFixed: Color(4294238887),
      onTertiaryFixed: Color(4280425216),
      tertiaryFixedDim: Color(4292331149),
      onTertiaryFixedVariant: Color(4283581978),
      surfaceDim: Color(4293449425),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963693),
      surfaceContainer: Color(4294765285),
      surfaceContainerHigh: Color(4294436063),
      surfaceContainerHighest: Color(4294041562),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285346077),
      surfaceTint: Color(4287581238),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289356106),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284038195),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287589730),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283253270),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286739523),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965494),
      onSurface: Color(4280490263),
      onSurfaceVariant: Color(4283383611),
      outline: Color(4285291350),
      outlineVariant: Color(4287199089),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937451),
      inversePrimary: Color(4294948254),
      primaryFixed: Color(4289356106),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287383860),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287589730),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285813835),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286739523),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285029165),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293449425),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963693),
      surfaceContainer: Color(4294765285),
      surfaceContainerHigh: Color(4294436063),
      surfaceContainerHighest: Color(4294041562),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282585602),
      surfaceTint: Color(4287581238),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285346077),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281605140),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284038195),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280951040),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283253270),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965494),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281213213),
      outline: Color(4283383611),
      outlineVariant: Color(4283383611),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937451),
      inversePrimary: Color(4294961120),
      primaryFixed: Color(4285346077),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283505674),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284038195),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282394142),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283253270),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281740290),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293449425),
      surfaceBright: Color(4294965494),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963693),
      surfaceContainer: Color(4294765285),
      surfaceContainerHigh: Color(4294436063),
      surfaceContainerHighest: Color(4294041562),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294948254),
      surfaceTint: Color(4294948254),
      onPrimary: Color(4283768845),
      primaryContainer: Color(4285674785),
      onPrimaryContainer: Color(4294958032),
      secondary: Color(4293377457),
      onSecondary: Color(4282657314),
      secondaryContainer: Color(4284301367),
      onSecondaryContainer: Color(4294958032),
      tertiary: Color(4292331149),
      onTertiary: Color(4282003461),
      tertiaryContainer: Color(4283581978),
      onTertiaryContainer: Color(4294238887),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279898383),
      onSurface: Color(4294041562),
      onSurfaceVariant: Color(4292395708),
      outline: Color(4288712071),
      outlineVariant: Color(4283646783),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041562),
      inversePrimary: Color(4287581238),
      primaryFixed: Color(4294958032),
      onPrimaryFixed: Color(4281993984),
      primaryFixedDim: Color(4294948254),
      onPrimaryFixedVariant: Color(4285674785),
      secondaryFixed: Color(4294958032),
      onSecondaryFixed: Color(4281079310),
      secondaryFixedDim: Color(4293377457),
      onSecondaryFixedVariant: Color(4284301367),
      tertiaryFixed: Color(4294238887),
      onTertiaryFixed: Color(4280425216),
      tertiaryFixedDim: Color(4292331149),
      onTertiaryFixedVariant: Color(4283581978),
      surfaceDim: Color(4279898383),
      surfaceBright: Color(4282529587),
      surfaceContainerLowest: Color(4279503882),
      surfaceContainerLow: Color(4280490263),
      surfaceContainer: Color(4280753435),
      surfaceContainerHigh: Color(4281477157),
      surfaceContainerHighest: Color(4282200623),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294949798),
      surfaceTint: Color(4294948254),
      onPrimary: Color(4281337856),
      primaryContainer: Color(4291525731),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293640629),
      onSecondary: Color(4280684553),
      secondaryContainer: Color(4289628285),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292594321),
      onTertiary: Color(4280030720),
      tertiaryContainer: Color(4288647260),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898383),
      onSurface: Color(4294965752),
      onSurfaceVariant: Color(4292658880),
      outline: Color(4289961625),
      outlineVariant: Color(4287790970),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041562),
      inversePrimary: Color(4285740578),
      primaryFixed: Color(4294958032),
      onPrimaryFixed: Color(4280813056),
      primaryFixedDim: Color(4294948254),
      onPrimaryFixedVariant: Color(4284294418),
      secondaryFixed: Color(4294958032),
      onSecondaryFixed: Color(4280290053),
      secondaryFixedDim: Color(4293377457),
      onSecondaryFixedVariant: Color(4283117351),
      tertiaryFixed: Color(4294238887),
      onTertiaryFixed: Color(4279636224),
      tertiaryFixedDim: Color(4292331149),
      onTertiaryFixedVariant: Color(4282397962),
      surfaceDim: Color(4279898383),
      surfaceBright: Color(4282529587),
      surfaceContainerLowest: Color(4279503882),
      surfaceContainerLow: Color(4280490263),
      surfaceContainer: Color(4280753435),
      surfaceContainerHigh: Color(4281477157),
      surfaceContainerHighest: Color(4282200623),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965752),
      surfaceTint: Color(4294948254),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949798),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965752),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293640629),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966005),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292594321),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898383),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965752),
      outline: Color(4292658880),
      outlineVariant: Color(4292658880),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041562),
      inversePrimary: Color(4283242759),
      primaryFixed: Color(4294959319),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949798),
      onPrimaryFixedVariant: Color(4281337856),
      secondaryFixed: Color(4294959319),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293640629),
      onSecondaryFixedVariant: Color(4280684553),
      tertiaryFixed: Color(4294567595),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292594321),
      onTertiaryFixedVariant: Color(4280030720),
      surfaceDim: Color(4279898383),
      surfaceBright: Color(4282529587),
      surfaceContainerLowest: Color(4279503882),
      surfaceContainerLow: Color(4280490263),
      surfaceContainer: Color(4280753435),
      surfaceContainerHigh: Color(4281477157),
      surfaceContainerHighest: Color(4282200623),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
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
