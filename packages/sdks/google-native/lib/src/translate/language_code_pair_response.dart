// ignore_for_file: unused_element, unnecessary_cast


/// Used with unidirectional glossaries.
class LanguageCodePairResponse {
  /// The ISO-639 language code of the input text, for example, "en-US". Expected to be an exact match for GlossaryTerm.language_code.
  final String sourceLanguageCode;
  /// The ISO-639 language code for translation output, for example, "zh-CN". Expected to be an exact match for GlossaryTerm.language_code.
  final String targetLanguageCode;

  /// Creates a new [LanguageCodePairResponse].
  /// [sourceLanguageCode] The ISO-639 language code of the input text, for example, "en-US". Expected to be an exact match for GlossaryTerm.language_code.
  /// [targetLanguageCode] The ISO-639 language code for translation output, for example, "zh-CN". Expected to be an exact match for GlossaryTerm.language_code.
  LanguageCodePairResponse({
    required this.sourceLanguageCode,
    required this.targetLanguageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceLanguageCode': sourceLanguageCode,
      'targetLanguageCode': targetLanguageCode,
    };
  }

  factory LanguageCodePairResponse.fromMap(Map<String, dynamic> map) {
    return LanguageCodePairResponse(
      sourceLanguageCode: map['sourceLanguageCode'] as String,
      targetLanguageCode: map['targetLanguageCode'] as String,
    );
  }
}

