import 'package:favorite_places_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),
  onSurface: const Color.fromARGB(255, 56, 49, 66),
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.onSurface,
  appBarTheme: const AppBarTheme().copyWith(
    foregroundColor: colorScheme.onPrimaryContainer,
  ),
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
      color: colorScheme.onPrimaryContainer,
    ),
    titleMedium: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
      color: colorScheme.onPrimaryContainer,
    ),
    titleLarge: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
      color: colorScheme.onPrimaryContainer,
    ),
    bodySmall: GoogleFonts.ubuntuCondensed(
      color: colorScheme.onPrimaryContainer,
    ),
    bodyMedium: GoogleFonts.ubuntuCondensed(
      color: colorScheme.onPrimaryContainer,
    ),
    bodyLarge: GoogleFonts.ubuntuCondensed(
      color: colorScheme.onPrimaryContainer,
    ),
  ),
);

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Great Places',
        theme: theme,
        home: const HomeScreen(),
      ),
    );
  }
}
