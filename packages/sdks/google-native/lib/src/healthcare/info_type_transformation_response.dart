// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'character_mask_config_response.dart';
import 'crypto_hash_config_response.dart';
import 'date_shift_config_response.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformationResponse {
  /// Config for character mask.
  final pulumi.Input<CharacterMaskConfigResponse> characterMaskConfig;

  /// Config for crypto hash.
  final pulumi.Input<CryptoHashConfigResponse> cryptoHashConfig;

  /// Config for date shift.
  final pulumi.Input<DateShiftConfigResponse> dateShiftConfig;

  /// InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.
  final pulumi.Input<List<String>> infoTypes;

  /// Config for text redaction.
  final pulumi.Input<Map<String, dynamic>> redactConfig;

  /// Config for replace with InfoType.
  final pulumi.Input<Map<String, dynamic>> replaceWithInfoTypeConfig;

  /// Creates a new [InfoTypeTransformationResponse].
  /// [characterMaskConfig] Config for character mask.
  /// [cryptoHashConfig] Config for crypto hash.
  /// [dateShiftConfig] Config for date shift.
  /// [infoTypes] InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.
  /// [redactConfig] Config for text redaction.
  /// [replaceWithInfoTypeConfig] Config for replace with InfoType.
  InfoTypeTransformationResponse({
    required this.characterMaskConfig,
    required this.cryptoHashConfig,
    required this.dateShiftConfig,
    required this.infoTypes,
    required this.redactConfig,
    required this.replaceWithInfoTypeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterMaskConfig':
          pulumi.Input.mapInputValue<
            CharacterMaskConfigResponse,
            Map<String, dynamic>
          >(characterMaskConfig, (value) => value.toMap()),
      'cryptoHashConfig':
          pulumi.Input.mapInputValue<
            CryptoHashConfigResponse,
            Map<String, dynamic>
          >(cryptoHashConfig, (value) => value.toMap()),
      'dateShiftConfig':
          pulumi.Input.mapInputValue<
            DateShiftConfigResponse,
            Map<String, dynamic>
          >(dateShiftConfig, (value) => value.toMap()),
      'infoTypes': infoTypes,
      'redactConfig': redactConfig,
      'replaceWithInfoTypeConfig': replaceWithInfoTypeConfig,
    };
  }

  factory InfoTypeTransformationResponse.fromMap(Map<String, dynamic> map) {
    return InfoTypeTransformationResponse(
      characterMaskConfig: pulumi.Input.fromValue(
        CharacterMaskConfigResponse.fromMap(
          (map['characterMaskConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      cryptoHashConfig: pulumi.Input.fromValue(
        CryptoHashConfigResponse.fromMap(
          (map['cryptoHashConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      dateShiftConfig: pulumi.Input.fromValue(
        DateShiftConfigResponse.fromMap(
          (map['dateShiftConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      infoTypes: pulumi.Input.fromValue(
        (map['infoTypes'] as List).cast<String>(),
      ),
      redactConfig: pulumi.Input.fromValue(
        (map['redactConfig']! as Map).cast<String, dynamic>(),
      ),
      replaceWithInfoTypeConfig: pulumi.Input.fromValue(
        (map['replaceWithInfoTypeConfig']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
