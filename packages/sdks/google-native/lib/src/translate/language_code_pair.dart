// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Used with unidirectional glossaries.
class LanguageCodePair {
  /// The ISO-639 language code of the input text, for example, "en-US". Expected to be an exact match for GlossaryTerm.language_code.
  final pulumi.Input<String> sourceLanguageCode;

  /// The ISO-639 language code for translation output, for example, "zh-CN". Expected to be an exact match for GlossaryTerm.language_code.
  final pulumi.Input<String> targetLanguageCode;

  /// Creates a new [LanguageCodePair].
  /// [sourceLanguageCode] The ISO-639 language code of the input text, for example, "en-US". Expected to be an exact match for GlossaryTerm.language_code.
  /// [targetLanguageCode] The ISO-639 language code for translation output, for example, "zh-CN". Expected to be an exact match for GlossaryTerm.language_code.
  LanguageCodePair({
    required this.sourceLanguageCode,
    required this.targetLanguageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceLanguageCode': sourceLanguageCode,
      'targetLanguageCode': targetLanguageCode,
    };
  }

  factory LanguageCodePair.fromMap(Map<String, dynamic> map) {
    return LanguageCodePair(
      sourceLanguageCode: pulumi.Input.fromValue(
        map['sourceLanguageCode'] as String,
      ),
      targetLanguageCode: pulumi.Input.fromValue(
        map['targetLanguageCode'] as String,
      ),
    );
  }
}
