// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_chars_to_ignore_response.dart';

/// Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we'll attempt to preserve the original data's type. (This allows you to take a long like 123 and modify it to a string like **3.
class GooglePrivacyDlpV2CharacterMaskConfigResponse {
  /// When masking a string, items in this list will be skipped when replacing characters. For example, if the input string is `555-555-5555` and you instruct Cloud DLP to skip `-` and mask 5 characters with `*`, Cloud DLP returns `***-**5-5555`.
  final pulumi.Input<List<GooglePrivacyDlpV2CharsToIgnoreResponse>> charactersToIgnore;
  /// Character to use to mask the sensitive values—for example, `*` for an alphabetic string such as a name, or `0` for a numeric string such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to `*` for strings, and `0` for digits.
  final pulumi.Input<String> maskingCharacter;
  /// Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally. If `number_to_mask` is negative, this denotes inverse masking. Cloud DLP masks all but a number of characters. For example, suppose you have the following values: - `masking_character` is `*` - `number_to_mask` is `-4` - `reverse_order` is `false` - `CharsToIgnore` includes `-` - Input string is `1234-5678-9012-3456` The resulting de-identified string is `****-****-****-3456`. Cloud DLP masks all but the last four characters. If `reverse_order` is `true`, all but the first four characters are masked as `1234-****-****-****`.
  final pulumi.Input<int> numberToMask;
  /// Mask characters in reverse order. For example, if `masking_character` is `0`, `number_to_mask` is `14`, and `reverse_order` is `false`, then the input string `1234-5678-9012-3456` is masked as `00000000000000-3456`. If `masking_character` is `*`, `number_to_mask` is `3`, and `reverse_order` is `true`, then the string `12345` is masked as `12***`.
  final pulumi.Input<bool> reverseOrder;

  /// Creates a new [GooglePrivacyDlpV2CharacterMaskConfigResponse].
  /// [charactersToIgnore] When masking a string, items in this list will be skipped when replacing characters. For example, if the input string is `555-555-5555` and you instruct Cloud DLP to skip `-` and mask 5 characters with `*`, Cloud DLP returns `***-**5-5555`.
  /// [maskingCharacter] Character to use to mask the sensitive values—for example, `*` for an alphabetic string such as a name, or `0` for a numeric string such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to `*` for strings, and `0` for digits.
  /// [numberToMask] Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally. If `number_to_mask` is negative, this denotes inverse masking. Cloud DLP masks all but a number of characters. For example, suppose you have the following values: - `masking_character` is `*` - `number_to_mask` is `-4` - `reverse_order` is `false` - `CharsToIgnore` includes `-` - Input string is `1234-5678-9012-3456` The resulting de-identified string is `****-****-****-3456`. Cloud DLP masks all but the last four characters. If `reverse_order` is `true`, all but the first four characters are masked as `1234-****-****-****`.
  /// [reverseOrder] Mask characters in reverse order. For example, if `masking_character` is `0`, `number_to_mask` is `14`, and `reverse_order` is `false`, then the input string `1234-5678-9012-3456` is masked as `00000000000000-3456`. If `masking_character` is `*`, `number_to_mask` is `3`, and `reverse_order` is `true`, then the string `12345` is masked as `12***`.
  GooglePrivacyDlpV2CharacterMaskConfigResponse({
    required this.charactersToIgnore,
    required this.maskingCharacter,
    required this.numberToMask,
    required this.reverseOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charactersToIgnore': pulumi.Input.mapInputValue<List<GooglePrivacyDlpV2CharsToIgnoreResponse>, List<Map<String, dynamic>>>(charactersToIgnore, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2CharsToIgnoreResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maskingCharacter': maskingCharacter,
      'numberToMask': numberToMask,
      'reverseOrder': reverseOrder,
    };
  }

  factory GooglePrivacyDlpV2CharacterMaskConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CharacterMaskConfigResponse(
      charactersToIgnore: pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2CharsToIgnoreResponse>(map['charactersToIgnore']!, (value) => GooglePrivacyDlpV2CharsToIgnoreResponse.fromMap((value as Map).cast<String, dynamic>()))),
      maskingCharacter: pulumi.Input.fromValue(map['maskingCharacter'] as String),
      numberToMask: pulumi.Input.fromValue(map['numberToMask'] as int),
      reverseOrder: pulumi.Input.fromValue(map['reverseOrder'] as bool),
    );
  }
}

