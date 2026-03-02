// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_crypto_key_response.dart';
import 'google_privacy_dlp_v2_field_id_response.dart';
import 'google_privacy_dlp_v2_info_type_response.dart';

/// Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the `ReidentifyContent` API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See https://cloud.google.com/dlp/docs/pseudonymization to learn more. Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity.
class GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse {
  /// Common alphabets.
  final pulumi.Input<String> commonAlphabet;
  /// The 'tweak', a context may be used for higher security since the same identifier in two different contexts won't be given the same surrogate. If the context is not set, a default tweak will be used. If the context is set but: 1. there is no record present when transforming a given value or 1. the field is not present when transforming a given value, a default tweak will be used. Note that case (1) is expected when an `InfoTypeTransformation` is applied to both structured and unstructured `ContentItem`s. Currently, the referenced field may be of value type integer or string. The tweak is constructed as a sequence of bytes in big endian byte order such that: - a 64 bit integer is encoded followed by a single byte of value 1 - a string is encoded in UTF-8 format followed by a single byte of value 2
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> context;
  /// The key used by the encryption algorithm.
  final pulumi.Input<GooglePrivacyDlpV2CryptoKeyResponse> cryptoKey;
  /// This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range [2, 95]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~`!@#$%^&*()_-+={[}]|\:;"'<,>.?/
  final pulumi.Input<String> customAlphabet;
  /// The native way to select the alphabet. Must be in the range [2, 95].
  final pulumi.Input<int> radix;
  /// The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info_type_name(surrogate_character_count):surrogate For example, if the name of custom infoType is 'MY_TOKEN_INFO_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY_TOKEN_INFO_TYPE(3):abc' This annotation identifies the surrogate when inspecting content using the custom infoType [`SurrogateType`](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text. In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY_TOKEN_TYPE
  final pulumi.Input<GooglePrivacyDlpV2InfoTypeResponse> surrogateInfoType;

  /// Creates a new [GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse].
  /// [commonAlphabet] Common alphabets.
  /// [context] The 'tweak', a context may be used for higher security since the same identifier in two different contexts won't be given the same surrogate. If the context is not set, a default tweak will be used. If the context is set but: 1. there is no record present when transforming a given value or 1. the field is not present when transforming a given value, a default tweak will be used. Note that case (1) is expected when an `InfoTypeTransformation` is applied to both structured and unstructured `ContentItem`s. Currently, the referenced field may be of value type integer or string. The tweak is constructed as a sequence of bytes in big endian byte order such that: - a 64 bit integer is encoded followed by a single byte of value 1 - a string is encoded in UTF-8 format followed by a single byte of value 2
  /// [cryptoKey] The key used by the encryption algorithm.
  /// [customAlphabet] This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range [2, 95]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~`!@#$%^&*()_-+={[}]|\:;"'<,>.?/
  /// [radix] The native way to select the alphabet. Must be in the range [2, 95].
  /// [surrogateInfoType] The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info_type_name(surrogate_character_count):surrogate For example, if the name of custom infoType is 'MY_TOKEN_INFO_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY_TOKEN_INFO_TYPE(3):abc' This annotation identifies the surrogate when inspecting content using the custom infoType [`SurrogateType`](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text. In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY_TOKEN_TYPE
  GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse({
    required this.commonAlphabet,
    required this.context,
    required this.cryptoKey,
    required this.customAlphabet,
    required this.radix,
    required this.surrogateInfoType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonAlphabet': commonAlphabet,
      'context': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(context, (value) => value.toMap()),
      'cryptoKey': pulumi.Input.mapInputValue<GooglePrivacyDlpV2CryptoKeyResponse, Map<String, dynamic>>(cryptoKey, (value) => value.toMap()),
      'customAlphabet': customAlphabet,
      'radix': radix,
      'surrogateInfoType': pulumi.Input.mapInputValue<GooglePrivacyDlpV2InfoTypeResponse, Map<String, dynamic>>(surrogateInfoType, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse(
      commonAlphabet: (map['commonAlphabet'] as String).input(),
      context: (GooglePrivacyDlpV2FieldIdResponse.fromMap((map['context'] as Map).cast<String, dynamic>())).input(),
      cryptoKey: (GooglePrivacyDlpV2CryptoKeyResponse.fromMap((map['cryptoKey'] as Map).cast<String, dynamic>())).input(),
      customAlphabet: (map['customAlphabet'] as String).input(),
      radix: (map['radix'] as int).input(),
      surrogateInfoType: (GooglePrivacyDlpV2InfoTypeResponse.fromMap((map['surrogateInfoType'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

