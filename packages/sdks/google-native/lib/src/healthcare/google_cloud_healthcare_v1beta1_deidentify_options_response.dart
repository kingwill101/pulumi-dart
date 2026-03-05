// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'character_mask_config_response_healthcare_v1beta1.dart';
import 'crypto_hash_config_response_healthcare_v1beta1.dart';
import 'date_shift_config_response_healthcare_v1beta1.dart';

/// Specifies additional options to apply to the base ProfileType.
class GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse {
  /// Character mask config for CharacterMaskField.
  final pulumi.Input<CharacterMaskConfigResponseHealthcareV1beta1> characterMaskConfig;
  /// Configure contextual de-id.
  final pulumi.Input<Map<String, dynamic>> contextualDeid;
  /// Crypto hash config for CharacterMaskField.
  final pulumi.Input<CryptoHashConfigResponseHealthcareV1beta1> cryptoHashConfig;
  /// Date shifting config for CharacterMaskField.
  final pulumi.Input<DateShiftConfigResponseHealthcareV1beta1> dateShiftConfig;
  /// Configure keeping extensions by default.
  final pulumi.Input<Map<String, dynamic>> keepExtensions;

  /// Creates a new [GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse].
  /// [characterMaskConfig] Character mask config for CharacterMaskField.
  /// [contextualDeid] Configure contextual de-id.
  /// [cryptoHashConfig] Crypto hash config for CharacterMaskField.
  /// [dateShiftConfig] Date shifting config for CharacterMaskField.
  /// [keepExtensions] Configure keeping extensions by default.
  GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse({
    required this.characterMaskConfig,
    required this.contextualDeid,
    required this.cryptoHashConfig,
    required this.dateShiftConfig,
    required this.keepExtensions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterMaskConfig': pulumi.Input.mapInputValue<CharacterMaskConfigResponseHealthcareV1beta1, Map<String, dynamic>>(characterMaskConfig, (value) => value.toMap()),
      'contextualDeid': contextualDeid,
      'cryptoHashConfig': pulumi.Input.mapInputValue<CryptoHashConfigResponseHealthcareV1beta1, Map<String, dynamic>>(cryptoHashConfig, (value) => value.toMap()),
      'dateShiftConfig': pulumi.Input.mapInputValue<DateShiftConfigResponseHealthcareV1beta1, Map<String, dynamic>>(dateShiftConfig, (value) => value.toMap()),
      'keepExtensions': keepExtensions,
    };
  }

  factory GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1DeidentifyOptionsResponse(
      characterMaskConfig: pulumi.Input.fromValue(CharacterMaskConfigResponseHealthcareV1beta1.fromMap((map['characterMaskConfig']! as Map).cast<String, dynamic>())),
      contextualDeid: pulumi.Input.fromValue((map['contextualDeid']! as Map).cast<String, dynamic>()),
      cryptoHashConfig: pulumi.Input.fromValue(CryptoHashConfigResponseHealthcareV1beta1.fromMap((map['cryptoHashConfig']! as Map).cast<String, dynamic>())),
      dateShiftConfig: pulumi.Input.fromValue(DateShiftConfigResponseHealthcareV1beta1.fromMap((map['dateShiftConfig']! as Map).cast<String, dynamic>())),
      keepExtensions: pulumi.Input.fromValue((map['keepExtensions']! as Map).cast<String, dynamic>()),
    );
  }
}

