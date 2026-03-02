// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiskDiskEncryptionKey {
  /// The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
  /// in the cloud console. Your project's Compute Engine System service account
  /// ('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com') must have
  /// 'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this feature.
  /// See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
  final pulumi.Input<String> kmsKeySelfLink;
  /// The service account used for the encryption request for the given KMS key.
  /// If absent, the Compute Engine Service Agent service account is used.
  final pulumi.Input<String> kmsKeyServiceAccount;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final pulumi.Input<String> rawKey;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// customer-supplied encryption key to either encrypt or decrypt
  /// this resource. You can provide either the rawKey or the rsaEncryptedKey.
  final pulumi.Input<String> rsaEncryptedKey;
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final pulumi.Input<String> sha256;

  /// Creates a new [GetDiskDiskEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
  /// [kmsKeyServiceAccount] The service account used for the encryption request for the given KMS key.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// [sha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  GetDiskDiskEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
    required this.rawKey,
    required this.rsaEncryptedKey,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': kmsKeySelfLink,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
      'rawKey': rawKey,
      'rsaEncryptedKey': rsaEncryptedKey,
      'sha256': sha256,
    };
  }

  factory GetDiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetDiskDiskEncryptionKey(
      kmsKeySelfLink: (map['kmsKeySelfLink'] as String).input(),
      kmsKeyServiceAccount: (map['kmsKeyServiceAccount'] as String).input(),
      rawKey: (map['rawKey'] as String).input(),
      rsaEncryptedKey: (map['rsaEncryptedKey'] as String).input(),
      sha256: (map['sha256'] as String).input(),
    );
  }
}

