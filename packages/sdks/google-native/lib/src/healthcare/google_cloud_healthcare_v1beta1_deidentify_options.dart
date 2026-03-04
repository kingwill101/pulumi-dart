// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'character_mask_config_healthcare_v1beta1.dart';
import 'crypto_hash_config_healthcare_v1beta1.dart';
import 'date_shift_config_healthcare_v1beta1.dart';

/// Specifies additional options to apply to the base ProfileType.
class GoogleCloudHealthcareV1beta1DeidentifyOptions {
  /// Character mask config for CharacterMaskField.
  final pulumi.Input<CharacterMaskConfigHealthcareV1beta1>? characterMaskConfig;

  /// Configure contextual de-id.
  final pulumi.Input<Map<String, dynamic>>? contextualDeid;

  /// Crypto hash config for CharacterMaskField.
  final pulumi.Input<CryptoHashConfigHealthcareV1beta1>? cryptoHashConfig;

  /// Date shifting config for CharacterMaskField.
  final pulumi.Input<DateShiftConfigHealthcareV1beta1>? dateShiftConfig;

  /// Configure keeping extensions by default.
  final pulumi.Input<Map<String, dynamic>>? keepExtensions;

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
      'characterMaskConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CharacterMaskConfigHealthcareV1beta1,
            Map<String, dynamic>
          >(characterMaskConfig, (value) => value.toMap()),
      'contextualDeid': ?contextualDeid,
      'cryptoHashConfig':
          ?pulumi.Input.mapOptionalInputValue<
            CryptoHashConfigHealthcareV1beta1,
            Map<String, dynamic>
          >(cryptoHashConfig, (value) => value.toMap()),
      'dateShiftConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DateShiftConfigHealthcareV1beta1,
            Map<String, dynamic>
          >(dateShiftConfig, (value) => value.toMap()),
      'keepExtensions': ?keepExtensions,
    };
  }

  factory GoogleCloudHealthcareV1beta1DeidentifyOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudHealthcareV1beta1DeidentifyOptions(
      characterMaskConfig: (() {
        final guardedValue = map['characterMaskConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CharacterMaskConfigHealthcareV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      contextualDeid: (() {
        final guardedValue = map['contextualDeid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      cryptoHashConfig: (() {
        final guardedValue = map['cryptoHashConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CryptoHashConfigHealthcareV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dateShiftConfig: (() {
        final guardedValue = map['dateShiftConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DateShiftConfigHealthcareV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keepExtensions: (() {
        final guardedValue = map['keepExtensions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
