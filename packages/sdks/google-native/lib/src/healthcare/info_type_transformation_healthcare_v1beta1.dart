// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'character_mask_config_healthcare_v1beta1.dart';
import 'crypto_hash_config_healthcare_v1beta1.dart';
import 'date_shift_config_healthcare_v1beta1.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformationHealthcareV1beta1 {
  /// Config for character mask.
  final pulumi.Input<CharacterMaskConfigHealthcareV1beta1>? characterMaskConfig;
  /// Config for crypto hash.
  final pulumi.Input<CryptoHashConfigHealthcareV1beta1>? cryptoHashConfig;
  /// Config for date shift.
  final pulumi.Input<DateShiftConfigHealthcareV1beta1>? dateShiftConfig;
  /// `InfoTypes` to apply this transformation to. If this is not specified, this transformation becomes the default transformation, and is used for any `info_type` that is not specified in another transformation.
  final pulumi.Input<List<String>>? infoTypes;
  /// Config for text redaction.
  final pulumi.Input<Map<String, dynamic>>? redactConfig;
  /// Config for replace with InfoType.
  final pulumi.Input<Map<String, dynamic>>? replaceWithInfoTypeConfig;

  /// Creates a new [InfoTypeTransformationHealthcareV1beta1].
  /// [characterMaskConfig] Config for character mask.
  /// [cryptoHashConfig] Config for crypto hash.
  /// [dateShiftConfig] Config for date shift.
  /// [infoTypes] `InfoTypes` to apply this transformation to. If this is not specified, this transformation becomes the default transformation, and is used for any `info_type` that is not specified in another transformation.
  /// [redactConfig] Config for text redaction.
  /// [replaceWithInfoTypeConfig] Config for replace with InfoType.
  InfoTypeTransformationHealthcareV1beta1({
    this.characterMaskConfig,
    this.cryptoHashConfig,
    this.dateShiftConfig,
    this.infoTypes,
    this.redactConfig,
    this.replaceWithInfoTypeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterMaskConfig': ?pulumi.Input.mapOptionalInputValue<CharacterMaskConfigHealthcareV1beta1, Map<String, dynamic>>(characterMaskConfig, (value) => value.toMap()),
      'cryptoHashConfig': ?pulumi.Input.mapOptionalInputValue<CryptoHashConfigHealthcareV1beta1, Map<String, dynamic>>(cryptoHashConfig, (value) => value.toMap()),
      'dateShiftConfig': ?pulumi.Input.mapOptionalInputValue<DateShiftConfigHealthcareV1beta1, Map<String, dynamic>>(dateShiftConfig, (value) => value.toMap()),
      'infoTypes': ?infoTypes,
      'redactConfig': ?redactConfig,
      'replaceWithInfoTypeConfig': ?replaceWithInfoTypeConfig,
    };
  }

  factory InfoTypeTransformationHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return InfoTypeTransformationHealthcareV1beta1(
      characterMaskConfig: (() { final guardedValue = map['characterMaskConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CharacterMaskConfigHealthcareV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cryptoHashConfig: (() { final guardedValue = map['cryptoHashConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CryptoHashConfigHealthcareV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dateShiftConfig: (() { final guardedValue = map['dateShiftConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateShiftConfigHealthcareV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infoTypes: (() { final guardedValue = map['infoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redactConfig: (() { final guardedValue = map['redactConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      replaceWithInfoTypeConfig: (() { final guardedValue = map['replaceWithInfoTypeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

