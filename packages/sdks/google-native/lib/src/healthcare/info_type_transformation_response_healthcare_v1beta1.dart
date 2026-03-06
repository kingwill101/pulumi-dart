// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'character_mask_config_response_healthcare_v1beta1.dart';
import 'crypto_hash_config_response_healthcare_v1beta1.dart';
import 'date_shift_config_response_healthcare_v1beta1.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformationResponseHealthcareV1beta1 {
  /// Config for character mask.
  final pulumi.Input<CharacterMaskConfigResponseHealthcareV1beta1> characterMaskConfig;
  /// Config for crypto hash.
  final pulumi.Input<CryptoHashConfigResponseHealthcareV1beta1> cryptoHashConfig;
  /// Config for date shift.
  final pulumi.Input<DateShiftConfigResponseHealthcareV1beta1> dateShiftConfig;
  /// `InfoTypes` to apply this transformation to. If this is not specified, this transformation becomes the default transformation, and is used for any `info_type` that is not specified in another transformation.
  final pulumi.Input<List<String>> infoTypes;
  /// Config for text redaction.
  final pulumi.Input<Map<String, dynamic>> redactConfig;
  /// Config for replace with InfoType.
  final pulumi.Input<Map<String, dynamic>> replaceWithInfoTypeConfig;

  /// Creates a new [InfoTypeTransformationResponseHealthcareV1beta1].
  /// [characterMaskConfig] Config for character mask.
  /// [cryptoHashConfig] Config for crypto hash.
  /// [dateShiftConfig] Config for date shift.
  /// [infoTypes] `InfoTypes` to apply this transformation to. If this is not specified, this transformation becomes the default transformation, and is used for any `info_type` that is not specified in another transformation.
  /// [redactConfig] Config for text redaction.
  /// [replaceWithInfoTypeConfig] Config for replace with InfoType.
  const InfoTypeTransformationResponseHealthcareV1beta1({
    required this.characterMaskConfig,
    required this.cryptoHashConfig,
    required this.dateShiftConfig,
    required this.infoTypes,
    required this.redactConfig,
    required this.replaceWithInfoTypeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterMaskConfig': pulumi.Input.mapInputValue<CharacterMaskConfigResponseHealthcareV1beta1, Map<String, dynamic>>(characterMaskConfig, (value) => value.toMap()),
      'cryptoHashConfig': pulumi.Input.mapInputValue<CryptoHashConfigResponseHealthcareV1beta1, Map<String, dynamic>>(cryptoHashConfig, (value) => value.toMap()),
      'dateShiftConfig': pulumi.Input.mapInputValue<DateShiftConfigResponseHealthcareV1beta1, Map<String, dynamic>>(dateShiftConfig, (value) => value.toMap()),
      'infoTypes': infoTypes,
      'redactConfig': redactConfig,
      'replaceWithInfoTypeConfig': replaceWithInfoTypeConfig,
    };
  }

  factory InfoTypeTransformationResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return InfoTypeTransformationResponseHealthcareV1beta1(
      characterMaskConfig: pulumi.Input.fromValue(CharacterMaskConfigResponseHealthcareV1beta1.fromMap((map['characterMaskConfig']! as Map).cast<String, dynamic>())),
      cryptoHashConfig: pulumi.Input.fromValue(CryptoHashConfigResponseHealthcareV1beta1.fromMap((map['cryptoHashConfig']! as Map).cast<String, dynamic>())),
      dateShiftConfig: pulumi.Input.fromValue(DateShiftConfigResponseHealthcareV1beta1.fromMap((map['dateShiftConfig']! as Map).cast<String, dynamic>())),
      infoTypes: pulumi.Input.fromValue((map['infoTypes'] as List).cast<String>()),
      redactConfig: pulumi.Input.fromValue((map['redactConfig']! as Map).cast<String, dynamic>()),
      replaceWithInfoTypeConfig: pulumi.Input.fromValue((map['replaceWithInfoTypeConfig']! as Map).cast<String, dynamic>()),
    );
  }
}

