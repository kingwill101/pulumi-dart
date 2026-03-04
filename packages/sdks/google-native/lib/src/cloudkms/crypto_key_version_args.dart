// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_state.dart';
import 'external_protection_level_options.dart';

/// {@template pulumi_cloudkms_v1_crypto_key_version_args_doc}
/// The set of arguments for CryptoKeyVersion.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_crypto_key_version_args_doc}
class CryptoKeyVersionArgs {
  final pulumi.Input<String>? cryptoKeyId;

  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  final pulumi.Input<ExternalProtectionLevelOptions>?
  externalProtectionLevelOptions;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The current state of the CryptoKeyVersion.
  final pulumi.Input<CryptoKeyVersionState>? state;

  /// Creates a new [CryptoKeyVersionArgs].
  /// [cryptoKeyId] Optional.
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [keyRingId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [state] The current state of the CryptoKeyVersion.
  CryptoKeyVersionArgs({
    this.cryptoKeyId,
    this.externalProtectionLevelOptions,
    required this.keyRingId,
    this.location,
    this.project,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyId': ?cryptoKeyId,
      'externalProtectionLevelOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ExternalProtectionLevelOptions,
            Map<String, dynamic>
          >(externalProtectionLevelOptions, (value) => value.toMap()),
      'keyRingId': keyRingId,
      'location': ?location,
      'project': ?project,
      'state':
          ?pulumi.Input.mapOptionalInputValue<CryptoKeyVersionState, String>(
            state,
            (value) => value.wireValue,
          ),
    };
  }

  factory CryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionArgs(
      cryptoKeyId: (() {
        final guardedValue = map['cryptoKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalProtectionLevelOptions: (() {
        final guardedValue = map['externalProtectionLevelOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExternalProtectionLevelOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyRingId: pulumi.Input.fromValue(map['keyRingId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CryptoKeyVersionState.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
