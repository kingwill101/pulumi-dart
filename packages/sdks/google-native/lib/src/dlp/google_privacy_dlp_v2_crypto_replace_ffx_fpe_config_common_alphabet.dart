import 'package:pulumi/pulumi.dart' as pulumi;

/// Common alphabets.
enum GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet implements pulumi.PulumiEnum<String> {
  ffxCommonNativeAlphabetUnspecified("FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED"),
  numeric("NUMERIC"),
  hexadecimal("HEXADECIMAL"),
  upperCaseAlphaNumeric("UPPER_CASE_ALPHA_NUMERIC"),
  alphaNumeric("ALPHA_NUMERIC");

  const GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet(this.wireValue);
  @override
  final String wireValue;

  static GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet fromValue(String value) {
    for (final item in GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigCommonAlphabet value: $value');
  }
}
