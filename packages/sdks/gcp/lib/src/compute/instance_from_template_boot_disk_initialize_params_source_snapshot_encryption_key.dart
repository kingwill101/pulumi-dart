// ignore_for_file: unused_element, unnecessary_cast


class InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final String? kmsKeySelfLink;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final String? kmsKeyServiceAccount;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final String? rawKey;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final String? rsaEncryptedKey;
  /// The SHA256 hash of the encryption key used to encrypt this disk.
  final String? sha256;

  /// Creates a new [InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  /// [sha256] The SHA256 hash of the encryption key used to encrypt this disk.
  InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey({
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

  factory InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : map['kmsKeyServiceAccount'] as String,
      rawKey: map['rawKey'] == null ? null : map['rawKey'] as String,
      rsaEncryptedKey: map['rsaEncryptedKey'] == null ? null : map['rsaEncryptedKey'] as String,
      sha256: map['sha256'] == null ? null : map['sha256'] as String,
    );
  }
}

