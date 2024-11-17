import 'package:flutter/material.dart';

/// A color class that extends [MaterialColor] to implement Tailwind CSS's color system.
///
/// [TailwindColor] represents a color palette with 11 different shades (from 50 to 950),
/// following Tailwind CSS's systematic approach to color. Each shade is carefully
/// chosen to provide a consistent and accessible color system.
///
/// Example usage:
/// ```dart
/// // Using a specific shade
/// final color = TailwindColor(
///   0xFF3B82F6,
///   {
///     50: Color(0xFFEFF6FF),
///     // ... other shades
///     950: Color(0xFF172554),
///   },
/// );
///
/// // Accessing shades
/// color.shade50;  // Lightest shade
/// color.shade500; // Primary shade
/// color.shade950; // Darkest shade
///
/// // Using with Flutter widgets
/// Container(
///   color: color.shade100,
///   child: Text('Light background'),
/// )
/// ```
///
/// The color system follows Tailwind CSS's shade conventions:
/// - 50: Lightest shade, perfect for light mode backgrounds
/// - 100-300: Light shades, good for hover states and borders
/// - 400-600: Medium shades, ideal for primary UI elements
/// - 700-950: Dark shades, excellent for text and dark mode elements
class TailwindColor extends MaterialColor {
  /// Creates a [TailwindColor] with a primary value and a swatch of color shades.
  ///
  /// The [primary] parameter is typically the 500 shade value.
  /// The [primarySwatch] is a map of shade values (50-950) to their corresponding [Color] objects.
  ///
  /// Example:
  /// ```dart
  /// final blue = TailwindColor(
  ///   0xFF3B82F6,  // Primary color (500)
  ///   {
  ///     50: Color(0xFFEFF6FF),
  ///     100: Color(0xFFDBEAFE),
  ///     // ... other shades
  ///     950: Color(0xFF172554),
  ///   },
  /// );
  /// ```
  const TailwindColor(
    super.primary,
    super.primarySwatch,
  );

  /// Returns the primary color of the palette.
  ///
  /// This is equivalent to [shade500] and is typically used as the main brand color.
  Color get primary => Color(value);

  /// The lightest shade (50) in the palette.
  ///
  /// Best used for:
  /// - Light mode backgrounds
  /// - Subtle hover states
  /// - Very light accents
  @override
  Color get shade50 => this[50]!;

  /// A very light shade (100) in the palette.
  ///
  /// Best used for:
  /// - Alternative light mode backgrounds
  /// - Hover states on light backgrounds
  /// - Light borders
  @override
  Color get shade100 => this[100]!;

  /// A light shade (200) in the palette.
  ///
  /// Best used for:
  /// - Light mode UI elements
  /// - Borders on light backgrounds
  /// - Subtle decorative elements
  @override
  Color get shade200 => this[200]!;

  /// A medium-light shade (300) in the palette.
  ///
  /// Best used for:
  /// - Secondary UI elements
  /// - Borders
  /// - Decorative accents
  @override
  Color get shade300 => this[300]!;

  /// A medium shade (400) in the palette.
  ///
  /// Best used for:
  /// - Primary UI elements
  /// - Text on light backgrounds
  /// - Interactive elements
  @override
  Color get shade400 => this[400]!;

  /// The primary shade (500) in the palette.
  ///
  /// This is the default shade and is best used for:
  /// - Primary brand colors
  /// - Main UI elements
  /// - Call-to-action buttons
  @override
  Color get shade500 => this[500]!;

  /// A medium-dark shade (600) in the palette.
  ///
  /// Best used for:
  /// - Hover states on primary elements
  /// - Important UI elements
  /// - Text on light backgrounds
  @override
  Color get shade600 => this[600]!;

  /// A dark shade (700) in the palette.
  ///
  /// Best used for:
  /// - Active states
  /// - Text colors
  /// - Dark mode UI elements
  @override
  Color get shade700 => this[700]!;

  /// A very dark shade (800) in the palette.
  ///
  /// Best used for:
  /// - Dark mode UI elements
  /// - Emphasis text
  /// - Dark backgrounds
  @override
  Color get shade800 => this[800]!;

  /// An extremely dark shade (900) in the palette.
  ///
  /// Best used for:
  /// - Dark mode backgrounds
  /// - High-emphasis text
  /// - Dark UI elements
  @override
  Color get shade900 => this[900]!;

  /// The darkest shade (950) in the palette.
  ///
  /// Best used for:
  /// - Very dark backgrounds
  /// - Highest emphasis text
  /// - Dark mode specific elements
  Color get shade950 => this[950]!;
}
