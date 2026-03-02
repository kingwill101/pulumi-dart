// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'text_style_response.dart';

/// A widget that displays textual content.
class TextResponse {
  /// The text content to be displayed.
  final pulumi.Input<String> content;
  /// How the text content is formatted.
  final pulumi.Input<String> format;
  /// How the text is styled
  final pulumi.Input<TextStyleResponse> style;

  /// Creates a new [TextResponse].
  /// [content] The text content to be displayed.
  /// [format] How the text content is formatted.
  /// [style] How the text is styled
  TextResponse({
    required this.content,
    required this.format,
    required this.style,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'format': format,
      'style': pulumi.Input.mapInputValue<TextStyleResponse, Map<String, dynamic>>(style, (value) => value.toMap()),
    };
  }

  factory TextResponse.fromMap(Map<String, dynamic> map) {
    return TextResponse(
      content: (map['content'] as String).input(),
      format: (map['format'] as String).input(),
      style: (TextStyleResponse.fromMap((map['style'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

