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
      decryption: (() {
        final guardedValue = map['decryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      decryptionKey: (() {
        final guardedValue = map['decryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validation: (() {
        final guardedValue = map['validation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validationKey: (() {
        final guardedValue = map['validationKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
