// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties that determine how the title and content are styled
class TextStyleResponse {
  /// The background color as a hex string. "#RRGGBB" or "#RGB"
  final pulumi.Input<String> backgroundColor;
  /// Font sizes for both the title and content. The title will still be larger relative to the content.
  final pulumi.Input<String> fontSize;
  /// The horizontal alignment of both the title and content
  final pulumi.Input<String> horizontalAlignment;
  /// The amount of padding around the widget
  final pulumi.Input<String> padding;
  /// The pointer location for this widget (also sometimes called a "tail")
  final pulumi.Input<String> pointerLocation;
  /// The text color as a hex string. "#RRGGBB" or "#RGB"
  final pulumi.Input<String> textColor;
  /// The vertical alignment of both the title and content
  final pulumi.Input<String> verticalAlignment;

  /// Creates a new [TextStyleResponse].
  /// [backgroundColor] The background color as a hex string. "#RRGGBB" or "#RGB"
  /// [fontSize] Font sizes for both the title and content. The title will still be larger relative to the content.
  /// [horizontalAlignment] The horizontal alignment of both the title and content
  /// [padding] The amount of padding around the widget
  /// [pointerLocation] The pointer location for this widget (also sometimes called a "tail")
  /// [textColor] The text color as a hex string. "#RRGGBB" or "#RGB"
  /// [verticalAlignment] The vertical alignment of both the title and content
  const TextStyleResponse({
    required this.backgroundColor,
    required this.fontSize,
    required this.horizontalAlignment,
    required this.padding,
    required this.pointerLocation,
    required this.textColor,
    required this.verticalAlignment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': backgroundColor,
      'fontSize': fontSize,
      'horizontalAlignment': horizontalAlignment,
      'padding': padding,
      'pointerLocation': pointerLocation,
      'textColor': textColor,
      'verticalAlignment': verticalAlignment,
    };
  }

  factory TextStyleResponse.fromMap(Map<String, dynamic> map) {
    return TextStyleResponse(
      backgroundColor: pulumi.Input.fromValue(map['backgroundColor'] as String),
      fontSize: pulumi.Input.fromValue(map['fontSize'] as String),
      horizontalAlignment: pulumi.Input.fromValue(map['horizontalAlignment'] as String),
      padding: pulumi.Input.fromValue(map['padding'] as String),
      pointerLocation: pulumi.Input.fromValue(map['pointerLocation'] as String),
      textColor: pulumi.Input.fromValue(map['textColor'] as String),
      verticalAlignment: pulumi.Input.fromValue(map['verticalAlignment'] as String),
    );
  }
}
