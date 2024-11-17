import 'package:flutter/material.dart';

class TailwindColor extends MaterialColor {
  const TailwindColor(
    super.primary,
    super.primarySwatch,
  );

  Color get primary => Color(value);

  /// The lightest shade.
  @override
  Color get shade50 => this[50]!;

  /// The second lightest shade.
  @override
  Color get shade100 => this[100]!;

  /// The third lightest shade.
  @override
  Color get shade200 => this[200]!;

  /// The fourth lightest shade.
  @override
  Color get shade300 => this[300]!;

  /// The fifth lightest shade.
  @override
  Color get shade400 => this[400]!;

  /// The default shade.
  @override
  Color get shade500 => this[500]!;

  /// The fourth darkest shade.
  @override
  Color get shade600 => this[600]!;

  /// The third darkest shade.
  @override
  Color get shade700 => this[700]!;

  /// The second darkest shade.
  @override
  Color get shade800 => this[800]!;

  /// The darkest shade.
  @override
  Color get shade900 => this[900]!;

  /// The final shade.
  Color get shade950 => this[950]!;
}
