// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single glossary term
class GlossaryTerm {
  /// The language for this glossary term.
  final pulumi.Input<String>? languageCode;
  /// The text for the glossary term.
  final pulumi.Input<String>? text;

  /// Creates a new [GlossaryTerm].
  /// [languageCode] The language for this glossary term.
  /// [text] The text for the glossary term.
  const GlossaryTerm({
    this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': ?languageCode,
      'text': ?text,
    };
  }

  factory GlossaryTerm.fromMap(Map<String, dynamic> map) {
    return GlossaryTerm(
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

