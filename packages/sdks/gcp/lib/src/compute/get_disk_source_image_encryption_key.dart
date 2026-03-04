// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiskSourceImageEncryptionKey {
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

  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final pulumi.Input<String> sha256;

  /// Creates a new [GetDiskSourceImageEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
  /// [kmsKeyServiceAccount] The service account used for the encryption request for the given KMS key.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [sha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  GetDiskSourceImageEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
    required this.rawKey,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': kmsKeySelfLink,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
      'rawKey': rawKey,
      'sha256': sha256,
    };
  }

  factory GetDiskSourceImageEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetDiskSourceImageEncryptionKey(
      kmsKeySelfLink: pulumi.Input.fromValue(map['kmsKeySelfLink'] as String),
      kmsKeyServiceAccount: pulumi.Input.fromValue(
        map['kmsKeyServiceAccount'] as String,
      ),
      rawKey: pulumi.Input.fromValue(map['rawKey'] as String),
      sha256: pulumi.Input.fromValue(map['sha256'] as String),
    );
  }
}
