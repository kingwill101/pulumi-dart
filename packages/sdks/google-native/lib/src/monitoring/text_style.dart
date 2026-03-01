// ignore_for_file: unused_element, unnecessary_cast

import 'text_style_font_size.dart';
import 'text_style_horizontal_alignment.dart';
import 'text_style_padding.dart';
import 'text_style_pointer_location.dart';
import 'text_style_vertical_alignment.dart';

/// Properties that determine how the title and content are styled
class TextStyle {
  /// The background color as a hex string. "#RRGGBB" or "#RGB"
  final String? backgroundColor;
  /// Font sizes for both the title and content. The title will still be larger relative to the content.
  final TextStyleFontSize? fontSize;
  /// The horizontal alignment of both the title and content
  final TextStyleHorizontalAlignment? horizontalAlignment;
  /// The amount of padding around the widget
  final TextStylePadding? padding;
  /// The pointer location for this widget (also sometimes called a "tail")
  final TextStylePointerLocation? pointerLocation;
  /// The text color as a hex string. "#RRGGBB" or "#RGB"
  final String? textColor;
  /// The vertical alignment of both the title and content
  final TextStyleVerticalAlignment? verticalAlignment;

  /// Creates a new [TextStyle].
  /// [backgroundColor] The background color as a hex string. "#RRGGBB" or "#RGB"
  /// [fontSize] Font sizes for both the title and content. The title will still be larger relative to the content.
  /// [horizontalAlignment] The horizontal alignment of both the title and content
  /// [padding] The amount of padding around the widget
  /// [pointerLocation] The pointer location for this widget (also sometimes called a "tail")
  /// [textColor] The text color as a hex string. "#RRGGBB" or "#RGB"
  /// [verticalAlignment] The vertical alignment of both the title and content
  TextStyle({
    this.backgroundColor,
    this.fontSize,
    this.horizontalAlignment,
    this.padding,
    this.pointerLocation,
    this.textColor,
    this.verticalAlignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': ?backgroundColor,
      'fontSize': ?fontSize == null ? null : fontSize!.value,
      'horizontalAlignment': ?horizontalAlignment == null ? null : horizontalAlignment!.value,
      'padding': ?padding == null ? null : padding!.value,
      'pointerLocation': ?pointerLocation == null ? null : pointerLocation!.value,
      'textColor': ?textColor,
      'verticalAlignment': ?verticalAlignment == null ? null : verticalAlignment!.value,
    };
  }

  factory TextStyle.fromMap(Map<String, dynamic> map) {
    return TextStyle(
      backgroundColor: map['backgroundColor'] == null ? null : map['backgroundColor'] as String,
      fontSize: map['fontSize'] == null ? null : TextStyleFontSize.fromValue(map['fontSize'] as String),
      horizontalAlignment: map['horizontalAlignment'] == null ? null : TextStyleHorizontalAlignment.fromValue(map['horizontalAlignment'] as String),
      padding: map['padding'] == null ? null : TextStylePadding.fromValue(map['padding'] as String),
      pointerLocation: map['pointerLocation'] == null ? null : TextStylePointerLocation.fromValue(map['pointerLocation'] as String),
      textColor: map['textColor'] == null ? null : map['textColor'] as String,
      verticalAlignment: map['verticalAlignment'] == null ? null : TextStyleVerticalAlignment.fromValue(map['verticalAlignment'] as String),
    );
  }
}

