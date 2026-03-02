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
  InfoTypeTransformation({
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
      characterMaskConfig: map['characterMaskConfig'] == null ? null : (CharacterMaskConfig.fromMap((map['characterMaskConfig']! as Map).cast<String, dynamic>())).input(),
      cryptoHashConfig: map['cryptoHashConfig'] == null ? null : (CryptoHashConfig.fromMap((map['cryptoHashConfig']! as Map).cast<String, dynamic>())).input(),
      dateShiftConfig: map['dateShiftConfig'] == null ? null : (DateShiftConfig.fromMap((map['dateShiftConfig']! as Map).cast<String, dynamic>())).input(),
      infoTypes: map['infoTypes'] == null ? null : ((map['infoTypes']! as List).cast<String>()).input(),
      redactConfig: map['redactConfig'] == null ? null : ((map['redactConfig']! as Map).cast<String, dynamic>()).input(),
      replaceWithInfoTypeConfig: map['replaceWithInfoTypeConfig'] == null ? null : ((map['replaceWithInfoTypeConfig']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

