// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single glossary term
class GlossaryTermResponse {
  /// The language for this glossary term.
  final pulumi.Input<String> languageCode;
  /// The text for the glossary term.
  final pulumi.Input<String> text;

  /// Creates a new [GlossaryTermResponse].
  /// [languageCode] The language for this glossary term.
  /// [text] The text for the glossary term.
  GlossaryTermResponse({
    required this.languageCode,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
      'text': text,
    };
  }

  factory GlossaryTermResponse.fromMap(Map<String, dynamic> map) {
    return GlossaryTermResponse(
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}

