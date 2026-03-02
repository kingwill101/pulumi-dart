// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_bucketing_config.dart';
import 'google_privacy_dlp_v2_character_mask_config.dart';
import 'google_privacy_dlp_v2_crypto_deterministic_config.dart';
import 'google_privacy_dlp_v2_crypto_hash_config.dart';
import 'google_privacy_dlp_v2_crypto_replace_ffx_fpe_config.dart';
import 'google_privacy_dlp_v2_date_shift_config.dart';
import 'google_privacy_dlp_v2_fixed_size_bucketing_config.dart';
import 'google_privacy_dlp_v2_replace_dictionary_config.dart';
import 'google_privacy_dlp_v2_replace_value_config.dart';
import 'google_privacy_dlp_v2_time_part_config.dart';

/// A rule for transforming a value.
class GooglePrivacyDlpV2PrimitiveTransformation {
  /// Bucketing
  final pulumi.Input<GooglePrivacyDlpV2BucketingConfig>? bucketingConfig;
  /// Mask
  final pulumi.Input<GooglePrivacyDlpV2CharacterMaskConfig>? characterMaskConfig;
  /// Deterministic Crypto
  final pulumi.Input<GooglePrivacyDlpV2CryptoDeterministicConfig>? cryptoDeterministicConfig;
  /// Crypto
  final pulumi.Input<GooglePrivacyDlpV2CryptoHashConfig>? cryptoHashConfig;
  /// Ffx-Fpe
  final pulumi.Input<GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig>? cryptoReplaceFfxFpeConfig;
  /// Date Shift
  final pulumi.Input<GooglePrivacyDlpV2DateShiftConfig>? dateShiftConfig;
  /// Fixed size bucketing
  final pulumi.Input<GooglePrivacyDlpV2FixedSizeBucketingConfig>? fixedSizeBucketingConfig;
  /// Redact
  final pulumi.Input<Map<String, dynamic>>? redactConfig;
  /// Replace with a specified value.
  final pulumi.Input<GooglePrivacyDlpV2ReplaceValueConfig>? replaceConfig;
  /// Replace with a value randomly drawn (with replacement) from a dictionary.
  final pulumi.Input<GooglePrivacyDlpV2ReplaceDictionaryConfig>? replaceDictionaryConfig;
  /// Replace with infotype
  final pulumi.Input<Map<String, dynamic>>? replaceWithInfoTypeConfig;
  /// Time extraction
  final pulumi.Input<GooglePrivacyDlpV2TimePartConfig>? timePartConfig;

  /// Creates a new [GooglePrivacyDlpV2PrimitiveTransformation].
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
  GooglePrivacyDlpV2PrimitiveTransformation({
    this.bucketingConfig,
    this.characterMaskConfig,
    this.cryptoDeterministicConfig,
    this.cryptoHashConfig,
    this.cryptoReplaceFfxFpeConfig,
    this.dateShiftConfig,
    this.fixedSizeBucketingConfig,
    this.redactConfig,
    this.replaceConfig,
    this.replaceDictionaryConfig,
    this.replaceWithInfoTypeConfig,
    this.timePartConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketingConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2BucketingConfig, Map<String, dynamic>>(bucketingConfig, (value) => value.toMap()),
      'characterMaskConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CharacterMaskConfig, Map<String, dynamic>>(characterMaskConfig, (value) => value.toMap()),
      'cryptoDeterministicConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CryptoDeterministicConfig, Map<String, dynamic>>(cryptoDeterministicConfig, (value) => value.toMap()),
      'cryptoHashConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CryptoHashConfig, Map<String, dynamic>>(cryptoHashConfig, (value) => value.toMap()),
      'cryptoReplaceFfxFpeConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig, Map<String, dynamic>>(cryptoReplaceFfxFpeConfig, (value) => value.toMap()),
      'dateShiftConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2DateShiftConfig, Map<String, dynamic>>(dateShiftConfig, (value) => value.toMap()),
      'fixedSizeBucketingConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2FixedSizeBucketingConfig, Map<String, dynamic>>(fixedSizeBucketingConfig, (value) => value.toMap()),
      'redactConfig': ?redactConfig,
      'replaceConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2ReplaceValueConfig, Map<String, dynamic>>(replaceConfig, (value) => value.toMap()),
      'replaceDictionaryConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2ReplaceDictionaryConfig, Map<String, dynamic>>(replaceDictionaryConfig, (value) => value.toMap()),
      'replaceWithInfoTypeConfig': ?replaceWithInfoTypeConfig,
      'timePartConfig': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2TimePartConfig, Map<String, dynamic>>(timePartConfig, (value) => value.toMap()),
    };
  }

  factory GooglePrivacyDlpV2PrimitiveTransformation.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PrimitiveTransformation(
      bucketingConfig: map['bucketingConfig'] == null ? null : (GooglePrivacyDlpV2BucketingConfig.fromMap((map['bucketingConfig']! as Map).cast<String, dynamic>())).input(),
      characterMaskConfig: map['characterMaskConfig'] == null ? null : (GooglePrivacyDlpV2CharacterMaskConfig.fromMap((map['characterMaskConfig']! as Map).cast<String, dynamic>())).input(),
      cryptoDeterministicConfig: map['cryptoDeterministicConfig'] == null ? null : (GooglePrivacyDlpV2CryptoDeterministicConfig.fromMap((map['cryptoDeterministicConfig']! as Map).cast<String, dynamic>())).input(),
      cryptoHashConfig: map['cryptoHashConfig'] == null ? null : (GooglePrivacyDlpV2CryptoHashConfig.fromMap((map['cryptoHashConfig']! as Map).cast<String, dynamic>())).input(),
      cryptoReplaceFfxFpeConfig: map['cryptoReplaceFfxFpeConfig'] == null ? null : (GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromMap((map['cryptoReplaceFfxFpeConfig']! as Map).cast<String, dynamic>())).input(),
      dateShiftConfig: map['dateShiftConfig'] == null ? null : (GooglePrivacyDlpV2DateShiftConfig.fromMap((map['dateShiftConfig']! as Map).cast<String, dynamic>())).input(),
      fixedSizeBucketingConfig: map['fixedSizeBucketingConfig'] == null ? null : (GooglePrivacyDlpV2FixedSizeBucketingConfig.fromMap((map['fixedSizeBucketingConfig']! as Map).cast<String, dynamic>())).input(),
      redactConfig: map['redactConfig'] == null ? null : ((map['redactConfig']! as Map).cast<String, dynamic>()).input(),
      replaceConfig: map['replaceConfig'] == null ? null : (GooglePrivacyDlpV2ReplaceValueConfig.fromMap((map['replaceConfig']! as Map).cast<String, dynamic>())).input(),
      replaceDictionaryConfig: map['replaceDictionaryConfig'] == null ? null : (GooglePrivacyDlpV2ReplaceDictionaryConfig.fromMap((map['replaceDictionaryConfig']! as Map).cast<String, dynamic>())).input(),
      replaceWithInfoTypeConfig: map['replaceWithInfoTypeConfig'] == null ? null : ((map['replaceWithInfoTypeConfig']! as Map).cast<String, dynamic>()).input(),
      timePartConfig: map['timePartConfig'] == null ? null : (GooglePrivacyDlpV2TimePartConfig.fromMap((map['timePartConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

