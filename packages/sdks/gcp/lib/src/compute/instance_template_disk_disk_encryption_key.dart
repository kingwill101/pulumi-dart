// ignore_for_file: unused_element, unnecessary_cast


class InstanceTemplateDiskDiskEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS
  final String? kmsKeySelfLink;
  /// The service account being used for the
  /// encryption request for the given KMS key. If absent, the Compute Engine
  /// default service account is used.
  final String? kmsKeyServiceAccount;

  /// Creates a new [InstanceTemplateDiskDiskEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS
  /// [kmsKeyServiceAccount] The service account being used for the
  InstanceTemplateDiskDiskEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
    };
  }

  factory InstanceTemplateDiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return InstanceTemplateDiskDiskEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : map['kmsKeySelfLink'] as String,
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : map['kmsKeyServiceAccount'] as String,
    );
  }
}

