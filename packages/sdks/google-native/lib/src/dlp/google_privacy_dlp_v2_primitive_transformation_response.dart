// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_bucketing_config_response.dart';
import 'google_privacy_dlp_v2_character_mask_config_response.dart';
import 'google_privacy_dlp_v2_crypto_deterministic_config_response.dart';
import 'google_privacy_dlp_v2_crypto_hash_config_response.dart';
import 'google_privacy_dlp_v2_crypto_replace_ffx_fpe_config_response.dart';
import 'google_privacy_dlp_v2_date_shift_config_response.dart';
import 'google_privacy_dlp_v2_fixed_size_bucketing_config_response.dart';
import 'google_privacy_dlp_v2_replace_dictionary_config_response.dart';
import 'google_privacy_dlp_v2_replace_value_config_response.dart';
import 'google_privacy_dlp_v2_time_part_config_response.dart';

/// A rule for transforming a value.
class GooglePrivacyDlpV2PrimitiveTransformationResponse {
  /// Bucketing
  final pulumi.Input<GooglePrivacyDlpV2BucketingConfigResponse> bucketingConfig;

  /// Mask
  final pulumi.Input<GooglePrivacyDlpV2CharacterMaskConfigResponse>
  characterMaskConfig;

  /// Deterministic Crypto
  final pulumi.Input<GooglePrivacyDlpV2CryptoDeterministicConfigResponse>
  cryptoDeterministicConfig;

  /// Crypto
  final pulumi.Input<GooglePrivacyDlpV2CryptoHashConfigResponse>
  cryptoHashConfig;

  /// Ffx-Fpe
  final pulumi.Input<GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse>
  cryptoReplaceFfxFpeConfig;

  /// Date Shift
  final pulumi.Input<GooglePrivacyDlpV2DateShiftConfigResponse> dateShiftConfig;

  /// Fixed size bucketing
  final pulumi.Input<GooglePrivacyDlpV2FixedSizeBucketingConfigResponse>
  fixedSizeBucketingConfig;

  /// Redact
  final pulumi.Input<Map<String, dynamic>> redactConfig;

  /// Replace with a specified value.
  final pulumi.Input<GooglePrivacyDlpV2ReplaceValueConfigResponse>
  replaceConfig;

  /// Replace with a value randomly drawn (with replacement) from a dictionary.
  final pulumi.Input<GooglePrivacyDlpV2ReplaceDictionaryConfigResponse>
  replaceDictionaryConfig;

  /// Replace with infotype
  final pulumi.Input<Map<String, dynamic>> replaceWithInfoTypeConfig;

  /// Time extraction
  final pulumi.Input<GooglePrivacyDlpV2TimePartConfigResponse> timePartConfig;

  /// Creates a new [GooglePrivacyDlpV2PrimitiveTransformationResponse].
  /// [bucketingConfig] Bucketing
  /// [characterMaskConfig] Mask
  /// [cryptoDeterministicConfig] Deterministic Crypto
  /// [cryptoHashConfig] Crypto
  /// [cryptoReplaceFfxFpeConfig] Ffx-Fpe
  /// [dateShiftConfig] Date Shift
  /// [fixedSizeBucketingConfig] Fixed size bucketing
  /// [redactConfig] Redact
  /// [replaceConfig] Replace with a specified value.
  /// [replaceDictionaryConfig] Replace with a value randomly drawn (with replacement) from a dictionary.
  /// [replaceWithInfoTypeConfig] Replace with infotype
  /// [timePartConfig] Time extraction
  GooglePrivacyDlpV2PrimitiveTransformationResponse({
    required this.bucketingConfig,
    required this.characterMaskConfig,
    required this.cryptoDeterministicConfig,
    required this.cryptoHashConfig,
    required this.cryptoReplaceFfxFpeConfig,
    required this.dateShiftConfig,
    required this.fixedSizeBucketingConfig,
    required this.redactConfig,
    required this.replaceConfig,
    required this.replaceDictionaryConfig,
    required this.replaceWithInfoTypeConfig,
    required this.timePartConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketingConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2BucketingConfigResponse,
            Map<String, dynamic>
          >(bucketingConfig, (value) => value.toMap()),
      'characterMaskConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2CharacterMaskConfigResponse,
            Map<String, dynamic>
          >(characterMaskConfig, (value) => value.toMap()),
      'cryptoDeterministicConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2CryptoDeterministicConfigResponse,
            Map<String, dynamic>
          >(cryptoDeterministicConfig, (value) => value.toMap()),
      'cryptoHashConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2CryptoHashConfigResponse,
            Map<String, dynamic>
          >(cryptoHashConfig, (value) => value.toMap()),
      'cryptoReplaceFfxFpeConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse,
            Map<String, dynamic>
          >(cryptoReplaceFfxFpeConfig, (value) => value.toMap()),
      'dateShiftConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2DateShiftConfigResponse,
            Map<String, dynamic>
          >(dateShiftConfig, (value) => value.toMap()),
      'fixedSizeBucketingConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2FixedSizeBucketingConfigResponse,
            Map<String, dynamic>
          >(fixedSizeBucketingConfig, (value) => value.toMap()),
      'redactConfig': redactConfig,
      'replaceConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2ReplaceValueConfigResponse,
            Map<String, dynamic>
          >(replaceConfig, (value) => value.toMap()),
      'replaceDictionaryConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2ReplaceDictionaryConfigResponse,
            Map<String, dynamic>
          >(replaceDictionaryConfig, (value) => value.toMap()),
      'replaceWithInfoTypeConfig': replaceWithInfoTypeConfig,
      'timePartConfig':
          pulumi.Input.mapInputValue<
            GooglePrivacyDlpV2TimePartConfigResponse,
            Map<String, dynamic>
          >(timePartConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2PrimitiveTransformationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2PrimitiveTransformationResponse(
      bucketingConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2BucketingConfigResponse.fromMap(
          (map['bucketingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      characterMaskConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2CharacterMaskConfigResponse.fromMap(
          (map['characterMaskConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      cryptoDeterministicConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2CryptoDeterministicConfigResponse.fromMap(
          (map['cryptoDeterministicConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      cryptoHashConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2CryptoHashConfigResponse.fromMap(
          (map['cryptoHashConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      cryptoReplaceFfxFpeConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2CryptoReplaceFfxFpeConfigResponse.fromMap(
          (map['cryptoReplaceFfxFpeConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      dateShiftConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2DateShiftConfigResponse.fromMap(
          (map['dateShiftConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      fixedSizeBucketingConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2FixedSizeBucketingConfigResponse.fromMap(
          (map['fixedSizeBucketingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      redactConfig: pulumi.Input.fromValue(
        (map['redactConfig']! as Map).cast<String, dynamic>(),
      ),
      replaceConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2ReplaceValueConfigResponse.fromMap(
          (map['replaceConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      replaceDictionaryConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2ReplaceDictionaryConfigResponse.fromMap(
          (map['replaceDictionaryConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      replaceWithInfoTypeConfig: pulumi.Input.fromValue(
        (map['replaceWithInfoTypeConfig']! as Map).cast<String, dynamic>(),
      ),
      timePartConfig: pulumi.Input.fromValue(
        GooglePrivacyDlpV2TimePartConfigResponse.fromMap(
          (map['timePartConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
