// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_character_mask_config.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_crypto_deterministic_config.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_crypto_hash_config.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_date_shift_config.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_fixed_size_bucketing_config.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_replace_config.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_replace_dictionary_config.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_time_part_config.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation {
  /// Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 &gt; LOW 31-65 &gt; MEDIUM 66-100 &gt; HIGH
  /// This can be used on data of type: number, long, string, timestamp.
  /// If the provided value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.
  /// See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfig
  >?
  bucketingConfig;

  /// Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we'll attempt to preserve the original data's type. (This allows you to take a long like 123 and modify it to a string like **3).
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig
  >?
  characterMaskConfig;

  /// Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297).
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfig
  >?
  cryptoDeterministicConfig;

  /// Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes.
  /// Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=).
  /// Currently, only string and integer values can be hashed.
  /// See https://cloud.google.com/dlp/docs/pseudonymization to learn more.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfig
  >?
  cryptoHashConfig;

  /// Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the `content.reidentify` API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.
  /// Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig
  >?
  cryptoReplaceFfxFpeConfig;

  /// Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig
  >?
  dateShiftConfig;

  /// Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies.
  /// The transformed value will be a hyphenated string of {lower_bound}-{upper_bound}. For example, if lower_bound = 10 and upper_bound = 20, all values that are within this bucket will be replaced with "10-20".
  /// This can be used on data of type: double, long.
  /// If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing.
  /// See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig
  >?
  fixedSizeBucketingConfig;

  /// Redact a given value. For example, if used with an InfoTypeTransformation transforming PHONE_NUMBER, and input 'My phone number is 206-555-0123', the output would be 'My phone number is '.
  final pulumi.Input<Map<String, dynamic>>? redactConfig;

  /// Replace each input value with a given value.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig
  >?
  replaceConfig;

  /// Replace with a value randomly drawn (with replacement) from a dictionary.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceDictionaryConfig
  >?
  replaceDictionaryConfig;

  /// Replace each matching finding with the name of the info type.
  final pulumi.Input<Map<String, dynamic>>? replaceWithInfoTypeConfig;

  /// For use with Date, Timestamp, and TimeOfDay, extract or preserve a portion of the value.
  /// Structure is documented below.
  final pulumi.Input<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig
  >?
  timePartConfig;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation].
  /// [bucketingConfig] Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 &gt; LOW 31-65 &gt; MEDIUM 66-100 &gt; HIGH
  /// [characterMaskConfig] Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we'll attempt to preserve the original data's type. (This allows you to take a long like 123 and modify it to a string like **3).
  /// [cryptoDeterministicConfig] Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC [https://tools.ietf.org/html/rfc5297](https://tools.ietf.org/html/rfc5297).
  /// [cryptoHashConfig] Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes.
  /// [cryptoReplaceFfxFpeConfig] Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the `content.reidentify` API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See [https://cloud.google.com/dlp/docs/pseudonymization](https://cloud.google.com/dlp/docs/pseudonymization) to learn more.
  /// [dateShiftConfig] Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more.
  /// [fixedSizeBucketingConfig] Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies.
  /// [redactConfig] Redact a given value. For example, if used with an InfoTypeTransformation transforming PHONE_NUMBER, and input 'My phone number is 206-555-0123', the output would be 'My phone number is '.
  /// [replaceConfig] Replace each input value with a given value.
  /// [replaceDictionaryConfig] Replace with a value randomly drawn (with replacement) from a dictionary.
  /// [replaceWithInfoTypeConfig] Replace each matching finding with the name of the info type.
  /// [timePartConfig] For use with Date, Timestamp, and TimeOfDay, extract or preserve a portion of the value.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation({
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
      'bucketingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfig,
            Map<String, dynamic>
          >(bucketingConfig, (value) => value.toMap()),
      'characterMaskConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig,
            Map<String, dynamic>
          >(characterMaskConfig, (value) => value.toMap()),
      'cryptoDeterministicConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfig,
            Map<String, dynamic>
          >(cryptoDeterministicConfig, (value) => value.toMap()),
      'cryptoHashConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfig,
            Map<String, dynamic>
          >(cryptoHashConfig, (value) => value.toMap()),
      'cryptoReplaceFfxFpeConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig,
            Map<String, dynamic>
          >(cryptoReplaceFfxFpeConfig, (value) => value.toMap()),
      'dateShiftConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig,
            Map<String, dynamic>
          >(dateShiftConfig, (value) => value.toMap()),
      'fixedSizeBucketingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig,
            Map<String, dynamic>
          >(fixedSizeBucketingConfig, (value) => value.toMap()),
      'redactConfig': ?redactConfig,
      'replaceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig,
            Map<String, dynamic>
          >(replaceConfig, (value) => value.toMap()),
      'replaceDictionaryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceDictionaryConfig,
            Map<String, dynamic>
          >(replaceDictionaryConfig, (value) => value.toMap()),
      'replaceWithInfoTypeConfig': ?replaceWithInfoTypeConfig,
      'timePartConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig,
            Map<String, dynamic>
          >(timePartConfig, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformation(
      bucketingConfig: (() {
        final guardedValue = map['bucketingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      characterMaskConfig: (() {
        final guardedValue = map['characterMaskConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cryptoDeterministicConfig: (() {
        final guardedValue = map['cryptoDeterministicConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cryptoHashConfig: (() {
        final guardedValue = map['cryptoHashConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cryptoReplaceFfxFpeConfig: (() {
        final guardedValue = map['cryptoReplaceFfxFpeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dateShiftConfig: (() {
        final guardedValue = map['dateShiftConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      fixedSizeBucketingConfig: (() {
        final guardedValue = map['fixedSizeBucketingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      redactConfig: (() {
        final guardedValue = map['redactConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      replaceConfig: (() {
        final guardedValue = map['replaceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      replaceDictionaryConfig: (() {
        final guardedValue = map['replaceDictionaryConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationReplaceDictionaryConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      replaceWithInfoTypeConfig: (() {
        final guardedValue = map['replaceWithInfoTypeConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      timePartConfig: (() {
        final guardedValue = map['timePartConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationTimePartConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
