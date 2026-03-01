// ignore_for_file: unused_element, unnecessary_cast


/// Characters to skip when doing deidentification of a value. These will be left alone and skipped.
class GooglePrivacyDlpV2CharsToIgnoreResponse {
  /// Characters to not transform when masking.
  final String charactersToSkip;
  /// Common characters to not transform when masking. Useful to avoid removing punctuation.
  final String commonCharactersToIgnore;

  /// Creates a new [GooglePrivacyDlpV2CharsToIgnoreResponse].
  /// [charactersToSkip] Characters to not transform when masking.
  /// [commonCharactersToIgnore] Common characters to not transform when masking. Useful to avoid removing punctuation.
  GooglePrivacyDlpV2CharsToIgnoreResponse({
    required this.charactersToSkip,
    required this.commonCharactersToIgnore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charactersToSkip': charactersToSkip,
      'commonCharactersToIgnore': commonCharactersToIgnore,
    };
  }

  factory GooglePrivacyDlpV2CharsToIgnoreResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CharsToIgnoreResponse(
      charactersToSkip: map['charactersToSkip'] as String,
      commonCharactersToIgnore: map['commonCharactersToIgnore'] as String,
    );
  }
}

