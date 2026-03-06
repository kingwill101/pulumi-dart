// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromMachineImageSourceMachineImageEncryptionKey {
  final pulumi.Input<String>? kmsKeyName;
  final pulumi.Input<String>? kmsKeyServiceAccount;
  final pulumi.Input<String>? rawKey;
  final pulumi.Input<String>? rsaEncryptedKey;
  final pulumi.Input<String>? sha256;

  /// Creates a new [InstanceFromMachineImageSourceMachineImageEncryptionKey].
  /// [kmsKeyName] Optional.
  /// [kmsKeyServiceAccount] Optional.
  /// [rawKey] Optional.
  /// [rsaEncryptedKey] Optional.
  /// [sha256] Optional.
  const InstanceFromMachineImageSourceMachineImageEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'rawKey': ?rawKey,
      'rsaEncryptedKey': ?rsaEncryptedKey,
      'sha256': ?sha256,
    };
  }

  factory InstanceFromMachineImageSourceMachineImageEncryptionKey.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageSourceMachineImageEncryptionKey(
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyServiceAccount: (() { final guardedValue = map['kmsKeyServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawKey: (() { final guardedValue = map['rawKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaEncryptedKey: (() { final guardedValue = map['rsaEncryptedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha256: (() { final guardedValue = map['sha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

