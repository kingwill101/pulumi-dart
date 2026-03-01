// ignore_for_file: unused_element, unnecessary_cast

import 'character_mask_config_healthcare_v1beta1.dart';
import 'crypto_hash_config_healthcare_v1beta1.dart';
import 'date_shift_config_healthcare_v1beta1.dart';

/// Specifies additional options to apply to the base ProfileType.
class GoogleCloudHealthcareV1beta1DeidentifyOptions {
  /// Character mask config for CharacterMaskField.
  final CharacterMaskConfigHealthcareV1beta1? characterMaskConfig;
  /// Configure contextual de-id.
  final Map<String, dynamic>? contextualDeid;
  /// Crypto hash config for CharacterMaskField.
  final CryptoHashConfigHealthcareV1beta1? cryptoHashConfig;
  /// Date shifting config for CharacterMaskField.
  final DateShiftConfigHealthcareV1beta1? dateShiftConfig;
  /// Configure keeping extensions by default.
  final Map<String, dynamic>? keepExtensions;

  /// Creates a new [GoogleCloudHealthcareV1beta1DeidentifyOptions].
  /// [characterMaskConfig] Character mask config for CharacterMaskField.
  /// [contextualDeid] Configure contextual de-id.
  /// [cryptoHashConfig] Crypto hash config for CharacterMaskField.
  /// [dateShiftConfig] Date shifting config for CharacterMaskField.
  /// [keepExtensions] Configure keeping extensions by default.
  GoogleCloudHealthcareV1beta1DeidentifyOptions({
    this.characterMaskConfig,
    this.contextualDeid,
    this.cryptoHashConfig,
    this.dateShiftConfig,
    this.keepExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterMaskConfig': ?characterMaskConfig == null ? null : characterMaskConfig!.toMap(),
      'contextualDeid': ?contextualDeid,
      'cryptoHashConfig': ?cryptoHashConfig == null ? null : cryptoHashConfig!.toMap(),
      'dateShiftConfig': ?dateShiftConfig == null ? null : dateShiftConfig!.toMap(),
      'keepExtensions': ?keepExtensions,
    };
  }

  factory GoogleCloudHealthcareV1beta1DeidentifyOptions.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1DeidentifyOptions(
      characterMaskConfig: map['characterMaskConfig'] == null ? null : CharacterMaskConfigHealthcareV1beta1.fromMap((map['characterMaskConfig'] as Map).cast<String, dynamic>()),
      contextualDeid: map['contextualDeid'] == null ? null : (map['contextualDeid'] as Map).cast<String, dynamic>(),
      cryptoHashConfig: map['cryptoHashConfig'] == null ? null : CryptoHashConfigHealthcareV1beta1.fromMap((map['cryptoHashConfig'] as Map).cast<String, dynamic>()),
      dateShiftConfig: map['dateShiftConfig'] == null ? null : DateShiftConfigHealthcareV1beta1.fromMap((map['dateShiftConfig'] as Map).cast<String, dynamic>()),
      keepExtensions: map['keepExtensions'] == null ? null : (map['keepExtensions'] as Map).cast<String, dynamic>(),
    );
  }
}

