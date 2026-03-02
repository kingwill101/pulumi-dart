// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxGeneratorPromptText {
  /// Text input which can be used for prompt or banned phrases.
  final pulumi.Input<String>? text;

  /// Creates a new [CxGeneratorPromptText].
  /// [text] Text input which can be used for prompt or banned phrases.
  CxGeneratorPromptText({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text,
    };
  }

  factory CxGeneratorPromptText.fromMap(Map<String, dynamic> map) {
    return CxGeneratorPromptText(
      text: map['text'] == null ? null : (map['text']! as String).input(),
    );
  }
}

