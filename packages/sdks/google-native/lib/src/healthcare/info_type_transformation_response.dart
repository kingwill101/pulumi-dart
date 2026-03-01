// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config_response.dart';
import 'crypto_hash_config_response.dart';
import 'date_shift_config_response.dart';

/// A transformation to apply to text that is identified as a specific info_type.
class InfoTypeTransformationResponse {
  /// Config for character mask.
  final CharacterMaskConfigResponse characterMaskConfig;
  /// Config for crypto hash.
  final CryptoHashConfigResponse cryptoHashConfig;
  /// Config for date shift.
  final DateShiftConfigResponse dateShiftConfig;
  /// InfoTypes to apply this transformation to. If this is not specified, the transformation applies to any info_type.
  final List<String> infoTypes;
  /// Config for text redaction.
  final Map<String, dynamic> redactConfig;
  /// Config for replace with InfoType.
  final Map<String, dynamic> replaceWithInfoTypeConfig;

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
      'characterMaskConfig': characterMaskConfig.toMap(),
      'cryptoHashConfig': cryptoHashConfig.toMap(),
      'dateShiftConfig': dateShiftConfig.toMap(),
      'infoTypes': infoTypes,
      'redactConfig': redactConfig,
      'replaceWithInfoTypeConfig': replaceWithInfoTypeConfig,
    };
  }

  factory InfoTypeTransformationResponse.fromMap(Map<String, dynamic> map) {
    return InfoTypeTransformationResponse(
      characterMaskConfig: CharacterMaskConfigResponse.fromMap((map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      cryptoHashConfig: CryptoHashConfigResponse.fromMap((map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      dateShiftConfig: DateShiftConfigResponse.fromMap((map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      infoTypes: (map['infoTypes'] as List).cast<String>(),
      redactConfig: (map['redactConfig'] as Map).cast<String, dynamic>(),
      replaceWithInfoTypeConfig: (map['replaceWithInfoTypeConfig'] as Map).cast<String, dynamic>(),
    );
  }
}

