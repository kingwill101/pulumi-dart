// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskDiskEncryptionKey {
  /// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
  /// in the cloud console. Your project's Compute Engine System service account
  /// (`service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com`) must have
  /// `roles/cloudkms.cryptoKeyEncrypterDecrypter` to use this feature.
  /// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
  final pulumi.Input<String>? kmsKeySelfLink;
  /// The service account used for the encryption request for the given KMS key.
  /// If absent, the Compute Engine Service Agent service account is used.
  final pulumi.Input<String>? kmsKeyServiceAccount;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? rawKey;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// customer-supplied encryption key to either encrypt or decrypt
  /// this resource. You can provide either the rawKey or the rsaEncryptedKey.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? rsaEncryptedKey;
  /// (Output)
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final pulumi.Input<String>? sha256;

  /// Creates a new [DiskDiskEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
  /// [kmsKeyServiceAccount] The service account used for the encryption request for the given KMS key.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// [sha256] (Output)
  const DiskDiskEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'rawKey': ?rawKey,
      'rsaEncryptedKey': ?rsaEncryptedKey,
      'sha256': ?sha256,
    };
  }

  factory DiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return DiskDiskEncryptionKey(
      kmsKeySelfLink: (() { final guardedValue = map['kmsKeySelfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyServiceAccount: (() { final guardedValue = map['kmsKeyServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawKey: (() { final guardedValue = map['rawKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaEncryptedKey: (() { final guardedValue = map['rsaEncryptedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha256: (() { final guardedValue = map['sha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
