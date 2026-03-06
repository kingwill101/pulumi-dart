// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'text_format.dart';
import 'text_style.dart';

/// A widget that displays textual content.
class Text {
  /// The text content to be displayed.
  final pulumi.Input<String>? content;
  /// How the text content is formatted.
  final pulumi.Input<TextFormat>? format;
  /// How the text is styled
  final pulumi.Input<TextStyle>? style;

  /// Creates a new [Text].
  /// [content] The text content to be displayed.
  /// [format] How the text content is formatted.
  /// [style] How the text is styled
  const Text({
    this.content,
    this.format,
    this.style,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'format': ?pulumi.Input.mapOptionalInputValue<TextFormat, String>(format, (value) => value.wireValue),
      'style': ?pulumi.Input.mapOptionalInputValue<TextStyle, Map<String, dynamic>>(style, (value) => value.toMap()),
    };
  }

  factory Text.fromMap(Map<String, dynamic> map) {
    return Text(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextFormat.fromValue(guardedValue as String)); })(),
      style: (() { final guardedValue = map['style']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TextStyle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

