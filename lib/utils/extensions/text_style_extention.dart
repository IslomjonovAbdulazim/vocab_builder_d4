import 'package:flutter/material.dart';

extension TextStylesExtension on BuildContext {
  /// A bold, extra-large style for banners or prominent displays.
  TextStyle get display => TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// A strong, attention-grabbing style for headlines.
  TextStyle get headline => TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// A refined title style for primary headings.
  TextStyle get title => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w800,
        height: 1.1,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// A refined title style for primary headings.
  TextStyle get name => TextStyle(
        fontSize: 16,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Theme.of(this).colorScheme.onSurface,
      );

  TextStyle get biggerName => TextStyle(
        fontSize: 20,
        height: 1.2,
        fontWeight: FontWeight.w800,
        color: Theme.of(this).colorScheme.onSurface,
      );

  TextStyle get italic => TextStyle(
        fontSize: 16,
        fontStyle: FontStyle.italic,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Theme.of(this).colorScheme.onSurface,
      );

  TextStyle get smallName => TextStyle(
        fontSize: 13,
        height: 1,
        fontWeight: FontWeight.w500,
        color: Theme.of(this).colorScheme.onSurface,
      );

  TextStyle get number => TextStyle(
        fontSize: 16,
        height: 1,
        fontWeight: FontWeight.w600,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// A softer style for subtitles or secondary headings.
  TextStyle get subtitle => TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        // Slightly translucent for a softer feel.
        color: Theme.of(this).colorScheme.onSurface.withOpacity(0.8),
      );

  /// The standard style for body text.
  TextStyle get body => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// A smaller style for captions or helper text.
  TextStyle get caption => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        // Reduced opacity for less emphasis.
        color: Theme.of(this).colorScheme.onSurface.withOpacity(0.6),
      );

  /// A bold style intended for buttons or call-to-action text.
  TextStyle get button => TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w800,
        // Typically used on a contrasting background (e.g. primary color).
      );

  /// A monospaced style ideal for code snippets or technical info.
  TextStyle get code => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// An understated style for labels or overline text.
  TextStyle get overline => TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        letterSpacing: 1.5,
        color: Theme.of(this).colorScheme.onSurface.withOpacity(0.7),
      );
}
