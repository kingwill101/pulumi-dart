/// Common characters to not transform when masking. Useful to avoid removing punctuation.
enum GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore {
  commonCharsToIgnoreUnspecified("COMMON_CHARS_TO_IGNORE_UNSPECIFIED"),
  numeric("NUMERIC"),
  alphaUpperCase("ALPHA_UPPER_CASE"),
  alphaLowerCase("ALPHA_LOWER_CASE"),
  punctuation("PUNCTUATION"),
  whitespace("WHITESPACE");

  const GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore(this.value);
  final String value;

  static GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore fromValue(String value) {
    for (final item in GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore value: $value');
  }
}

