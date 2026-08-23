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
  const GooglePrivacyDlpV2PrimitiveTransformation({
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
      bucketingConfig: (() { final guardedValue = map['bucketingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2BucketingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      characterMaskConfig: (() { final guardedValue = map['characterMaskConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CharacterMaskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cryptoDeterministicConfig: (() { final guardedValue = map['cryptoDeterministicConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CryptoDeterministicConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cryptoHashConfig: (() { final guardedValue = map['cryptoHashConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CryptoHashConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cryptoReplaceFfxFpeConfig: (() { final guardedValue = map['cryptoReplaceFfxFpeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dateShiftConfig: (() { final guardedValue = map['dateShiftConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2DateShiftConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fixedSizeBucketingConfig: (() { final guardedValue = map['fixedSizeBucketingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2FixedSizeBucketingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redactConfig: (() { final guardedValue = map['redactConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      replaceConfig: (() { final guardedValue = map['replaceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2ReplaceValueConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replaceDictionaryConfig: (() { final guardedValue = map['replaceDictionaryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2ReplaceDictionaryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replaceWithInfoTypeConfig: (() { final guardedValue = map['replaceWithInfoTypeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      timePartConfig: (() { final guardedValue = map['timePartConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2TimePartConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
