// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'character_mask_config.dart';
import 'crypto_hash_config.dart';
import 'date_shift_config.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformation {
  /// Config for character mask.
  final pulumi.Input<CharacterMaskConfig>? characterMaskConfig;
  /// Config for crypto hash.
  final pulumi.Input<CryptoHashConfig>? cryptoHashConfig;
  /// Config for date shift.
  final pulumi.Input<DateShiftConfig>? dateShiftConfig;
  /// InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.
  final pulumi.Input<List<String>>? infoTypes;
  /// Config for text redaction.
  final pulumi.Input<Map<String, dynamic>>? redactConfig;
  /// Config for replace with InfoType.
  final pulumi.Input<Map<String, dynamic>>? replaceWithInfoTypeConfig;

  /// Creates a new [InfoTypeTransformation].
  /// [characterMaskConfig] Config for character mask.
  /// [cryptoHashConfig] Config for crypto hash.
  /// [dateShiftConfig] Config for date shift.
  /// [infoTypes] InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.
  /// [redactConfig] Config for text redaction.
  /// [replaceWithInfoTypeConfig] Config for replace with InfoType.
  const InfoTypeTransformation({
    this.characterMaskConfig,
    this.cryptoHashConfig,
    this.dateShiftConfig,
    this.infoTypes,
    this.redactConfig,
    this.replaceWithInfoTypeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterMaskConfig': ?pulumi.Input.mapOptionalInputValue<CharacterMaskConfig, Map<String, dynamic>>(characterMaskConfig, (value) => value.toMap()),
      'cryptoHashConfig': ?pulumi.Input.mapOptionalInputValue<CryptoHashConfig, Map<String, dynamic>>(cryptoHashConfig, (value) => value.toMap()),
      'dateShiftConfig': ?pulumi.Input.mapOptionalInputValue<DateShiftConfig, Map<String, dynamic>>(dateShiftConfig, (value) => value.toMap()),
      'infoTypes': ?infoTypes,
      'redactConfig': ?redactConfig,
      'replaceWithInfoTypeConfig': ?replaceWithInfoTypeConfig,
    };
  }

  factory InfoTypeTransformation.fromMap(Map<String, dynamic> map) {
    return InfoTypeTransformation(
      characterMaskConfig: (() { final guardedValue = map['characterMaskConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CharacterMaskConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cryptoHashConfig: (() { final guardedValue = map['cryptoHashConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CryptoHashConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dateShiftConfig: (() { final guardedValue = map['dateShiftConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DateShiftConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infoTypes: (() { final guardedValue = map['infoTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redactConfig: (() { final guardedValue = map['redactConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      replaceWithInfoTypeConfig: (() { final guardedValue = map['replaceWithInfoTypeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

