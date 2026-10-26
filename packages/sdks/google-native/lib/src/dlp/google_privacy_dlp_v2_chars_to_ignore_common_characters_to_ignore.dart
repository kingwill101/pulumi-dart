import 'package:pulumi/pulumi.dart' as pulumi;

/// Common characters to not transform when masking. Useful to avoid removing punctuation.
enum GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore implements pulumi.PulumiEnum<String> {
  commonCharsToIgnoreUnspecified("COMMON_CHARS_TO_IGNORE_UNSPECIFIED"),
  numeric("NUMERIC"),
  alphaUpperCase("ALPHA_UPPER_CASE"),
  alphaLowerCase("ALPHA_LOWER_CASE"),
  punctuation("PUNCTUATION"),
  whitespace("WHITESPACE");

  const GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore fromValue(String value) {
    for (final item in GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2CharsToIgnoreCommonCharactersToIgnore value: $value');
  }
}
