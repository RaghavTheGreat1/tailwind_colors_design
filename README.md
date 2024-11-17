# tailwind_colors_design

[![pub package](https://img.shields.io/pub/v/tailwind_colors_design.svg)](https://pub.dev/packages/tailwind_colors_design)
[![likes](https://img.shields.io/pub/likes/tailwind_colors_design?style=flat-square)](https://pub.dev/packages/tailwind_colors_design/score)
[![popularity](https://img.shields.io/pub/popularity/tailwind_colors_design?style=flat-square)](https://pub.dev/packages/tailwind_colors_design/score)
[![pub points](https://img.shields.io/pub/points/tailwind_colors_design?style=flat-square)](https://pub.dev/packages/tailwind_colors_design/score)

A Flutter package that implements Tailwind CSS's beautiful color system, providing a comprehensive and systematic approach to colors in Flutter applications.

## Features

- 🎨 20 color palettes with 11 shades each (from 50 to 950)
- 🛠️ Easy-to-use API that matches Tailwind CSS's color system
- 🎯 Type-safe color access
- ⚡ Zero external dependencies
- 🔧 Custom color palette creation support
- 📱 Perfect for maintaining consistent colors across your Flutter app

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  tailwind_colors_design: ^1.0.0
```

Then run:
```bash
flutter pub get
```

## Usage

### Basic Usage

```dart
import 'package:tailwind_colors_design/tailwind_colors_design.dart';

// Use default shade (500)
Container(
  color: TailwindColors.blue,
  child: Text('Blue container'),
)

// Use specific shade
Container(
  color: TailwindColors.blue[600],
  child: Text('Darker blue container'),
)
```

### Available Colors

#### Grays
- `TailwindColors.slate`
- `TailwindColors.gray`
- `TailwindColors.zinc`
- `TailwindColors.neutral`
- `TailwindColors.stone`

#### Colors
- `TailwindColors.red`
- `TailwindColors.orange`
- `TailwindColors.amber`
- `TailwindColors.yellow`
- `TailwindColors.lime`
- `TailwindColors.green`
- `TailwindColors.emerald`
- `TailwindColors.teal`

#### Blues
- `TailwindColors.cyan`
- `TailwindColors.sky`
- `TailwindColors.blue`
- `TailwindColors.indigo`

#### Purples
- `TailwindColors.violet`
- `TailwindColors.purple`
- `TailwindColors.fuchsia`

#### Pinks
- `TailwindColors.pink`
- `TailwindColors.rose`

### Color Shades

Each color has 11 shades, ranging from 50 (lightest) to 950 (darkest):

```dart
TailwindColors.blue[50]   // Lightest blue
TailwindColors.blue[100]  // Very light blue
TailwindColors.blue[200]  // Light blue
TailwindColors.blue[300]  // ...
TailwindColors.blue[400]
TailwindColors.blue[500]  // Default shade
TailwindColors.blue[600]
TailwindColors.blue[700]
TailwindColors.blue[800]
TailwindColors.blue[900]
TailwindColors.blue[950]  // Darkest blue
```

### Creating Custom Colors

You can create your own color palettes that follow the Tailwind CSS system:

```dart
final customBlue = TailwindColors.createCustomColor(
  0xFF3B82F6,  // Primary color (500)
  {
    50: Color(0xFFEFF6FF),
    100: Color(0xFFDBEAFE),
    200: Color(0xFFBFDBFE),
    300: Color(0xFF93C5FD),
    400: Color(0xFF60A5FA),
    500: Color(0xFF3B82F6),
    600: Color(0xFF2563EB),
    700: Color(0xFF1D4ED8),
    800: Color(0xFF1E40AF),
    900: Color(0xFF1E3A8A),
    950: Color(0xFF172554),
  },
);
```

### Example Theme Implementation

Here's how you might use these colors in your app's theme:

```dart
ThemeData(
  primaryColor: TailwindColors.blue,
  scaffoldBackgroundColor: TailwindColors.gray[50],
  appBarTheme: AppBarTheme(
    backgroundColor: TailwindColors.blue[600],
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: TailwindColors.gray[900]),
    bodyMedium: TextStyle(color: TailwindColors.gray[800]),
    bodySmall: TextStyle(color: TailwindColors.gray[700]),
  ),
)
```

## Additional Information

### Color Selection Guide

- **50-100**: Background colors
- **200-300**: Border colors, subtle backgrounds
- **400-600**: Primary UI elements
- **700-800**: Text colors
- **900-950**: Emphasis, headlines

### Accessibility

The color system is designed with accessibility in mind, following Tailwind CSS's careful consideration of contrast ratios. However, always test your specific color combinations for proper contrast.

## Contributing

Contributions are welcome! If you find a bug or want to add a feature:

1. Open an issue describing the bug or feature
2. Fork the repository
3. Create your feature branch
4. Commit your changes
5. Push to the branch
6. Create a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Credits

- Inspired by [Tailwind CSS](https://tailwindcss.com/docs/customizing-colors)
- Color values sourced from Tailwind CSS's official color palette