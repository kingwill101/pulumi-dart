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
  InstanceFromMachineImageSourceMachineImageEncryptionKey({
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
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : (map['kmsKeyServiceAccount']! as String).input(),
      rawKey: map['rawKey'] == null ? null : (map['rawKey']! as String).input(),
      rsaEncryptedKey: map['rsaEncryptedKey'] == null ? null : (map['rsaEncryptedKey']! as String).input(),
      sha256: map['sha256'] == null ? null : (map['sha256']! as String).input(),
    );
  }
}

