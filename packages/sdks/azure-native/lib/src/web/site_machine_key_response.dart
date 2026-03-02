// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MachineKey of an app.
class SiteMachineKeyResponse {
  /// Algorithm used for decryption.
  final pulumi.Input<String>? decryption;
  /// Decryption key.
  final pulumi.Input<String>? decryptionKey;
  /// MachineKey validation.
  final pulumi.Input<String>? validation;
  /// Validation key.
  final pulumi.Input<String>? validationKey;

  /// Creates a new [SiteMachineKeyResponse].
  /// [decryption] Algorithm used for decryption.
  /// [decryptionKey] Decryption key.
  /// [validation] MachineKey validation.
  /// [validationKey] Validation key.
  SiteMachineKeyResponse({
    this.decryption,
    this.decryptionKey,
    this.validation,
    this.validationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'decryption': ?decryption,
      'decryptionKey': ?decryptionKey,
      'validation': ?validation,
      'validationKey': ?validationKey,
    };
  }

  factory SiteMachineKeyResponse.fromMap(Map<String, dynamic> map) {
    return SiteMachineKeyResponse(
      decryption: map['decryption'] == null ? null : (map['decryption'] as String).input(),
      decryptionKey: map['decryptionKey'] == null ? null : (map['decryptionKey'] as String).input(),
      validation: map['validation'] == null ? null : (map['validation'] as String).input(),
      validationKey: map['validationKey'] == null ? null : (map['validationKey'] as String).input(),
    );
  }
}

