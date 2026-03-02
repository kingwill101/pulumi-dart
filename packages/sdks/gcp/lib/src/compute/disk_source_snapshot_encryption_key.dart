// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiskSourceSnapshotEncryptionKey {
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
  final pulumi.Input<String>? rawKey;
  /// (Output)
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final pulumi.Input<String>? sha256;

  /// Creates a new [DiskSourceSnapshotEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
  /// [kmsKeyServiceAccount] The service account used for the encryption request for the given KMS key.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [sha256] (Output)
  DiskSourceSnapshotEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'rawKey': ?rawKey,
      'sha256': ?sha256,
    };
  }

  factory DiskSourceSnapshotEncryptionKey.fromMap(Map<String, dynamic> map) {
    return DiskSourceSnapshotEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : (map['kmsKeySelfLink']! as String).input(),
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : (map['kmsKeyServiceAccount']! as String).input(),
      rawKey: map['rawKey'] == null ? null : (map['rawKey']! as String).input(),
      sha256: map['sha256'] == null ? null : (map['sha256']! as String).input(),
    );
  }
}

