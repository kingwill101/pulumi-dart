// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'text_style_font_size.dart';
import 'text_style_horizontal_alignment.dart';
import 'text_style_padding.dart';
import 'text_style_pointer_location.dart';
import 'text_style_vertical_alignment.dart';

/// Properties that determine how the title and content are styled
class TextStyle {
  /// The background color as a hex string. "#RRGGBB" or "#RGB"
  final pulumi.Input<String>? backgroundColor;
  /// Font sizes for both the title and content. The title will still be larger relative to the content.
  final pulumi.Input<TextStyleFontSize>? fontSize;
  /// The horizontal alignment of both the title and content
  final pulumi.Input<TextStyleHorizontalAlignment>? horizontalAlignment;
  /// The amount of padding around the widget
  final pulumi.Input<TextStylePadding>? padding;
  /// The pointer location for this widget (also sometimes called a "tail")
  final pulumi.Input<TextStylePointerLocation>? pointerLocation;
  /// The text color as a hex string. "#RRGGBB" or "#RGB"
  final pulumi.Input<String>? textColor;
  /// The vertical alignment of both the title and content
  final pulumi.Input<TextStyleVerticalAlignment>? verticalAlignment;

  /// Creates a new [TextStyle].
  /// [backgroundColor] The background color as a hex string. "#RRGGBB" or "#RGB"
  /// [fontSize] Font sizes for both the title and content. The title will still be larger relative to the content.
  /// [horizontalAlignment] The horizontal alignment of both the title and content
  /// [padding] The amount of padding around the widget
  /// [pointerLocation] The pointer location for this widget (also sometimes called a "tail")
  /// [textColor] The text color as a hex string. "#RRGGBB" or "#RGB"
  /// [verticalAlignment] The vertical alignment of both the title and content
  const TextStyle({
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
      'fontSize': ?pulumi.Input.mapOptionalInputValue<TextStyleFontSize, String>(fontSize, (value) => value.wireValue),
      'horizontalAlignment': ?pulumi.Input.mapOptionalInputValue<TextStyleHorizontalAlignment, String>(horizontalAlignment, (value) => value.wireValue),
      'padding': ?pulumi.Input.mapOptionalInputValue<TextStylePadding, String>(padding, (value) => value.wireValue),
      'pointerLocation': ?pulumi.Input.mapOptionalInputValue<TextStylePointerLocation, String>(pointerLocation, (value) => value.wireValue),
      'textColor': ?textColor,
      'verticalAlignment': ?pulumi.Input.mapOptionalInputValue<TextStyleVerticalAlignment, String>(verticalAlignment, (value) => value.wireValue),
    };
  }

  factory TextStyle.fromMap(Map<String, dynamic> map) {
    return TextStyle(
      backgroundColor: (() { final guardedValue = map['backgroundColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fontSize: (() { final guardedValue = map['fontSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextStyleFontSize.fromValue(guardedValue as String)); })(),
      horizontalAlignment: (() { final guardedValue = map['horizontalAlignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextStyleHorizontalAlignment.fromValue(guardedValue as String)); })(),
      padding: (() { final guardedValue = map['padding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextStylePadding.fromValue(guardedValue as String)); })(),
      pointerLocation: (() { final guardedValue = map['pointerLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextStylePointerLocation.fromValue(guardedValue as String)); })(),
      textColor: (() { final guardedValue = map['textColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verticalAlignment: (() { final guardedValue = map['verticalAlignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextStyleVerticalAlignment.fromValue(guardedValue as String)); })(),
    );
  }
}

