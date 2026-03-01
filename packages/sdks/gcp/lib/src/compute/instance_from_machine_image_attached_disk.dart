// ignore_for_file: unused_element, unnecessary_cast


class InstanceFromMachineImageAttachedDisk {
  /// Name with which the attached disk is accessible under /dev/disk/by-id/
  final String? deviceName;
  /// A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  final String? diskEncryptionKeyRaw;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  final String? diskEncryptionKeyRsa;
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource.
  final String? diskEncryptionKeySha256;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used
  final String? diskEncryptionServiceAccount;
  /// Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  final bool? forceAttach;
  /// The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  final String? kmsKeySelfLink;
  /// Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".
  final String? mode;
  /// The name or self_link of the disk attached to this instance.
  final String source;

  /// Creates a new [InstanceFromMachineImageAttachedDisk].
  /// [deviceName] Name with which the attached disk is accessible under /dev/disk/by-id/
  /// [diskEncryptionKeyRaw] A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  /// [diskEncryptionKeyRsa] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  /// [diskEncryptionKeySha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource.
  /// [diskEncryptionServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used
  /// [forceAttach] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  /// [kmsKeySelfLink] The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  /// [mode] Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".
  /// [source] The name or self_link of the disk attached to this instance.
  InstanceFromMachineImageAttachedDisk({
    this.deviceName,
    this.diskEncryptionKeyRaw,
    this.diskEncryptionKeyRsa,
    this.diskEncryptionKeySha256,
    this.diskEncryptionServiceAccount,
    this.forceAttach,
    this.kmsKeySelfLink,
    this.mode,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'diskEncryptionKeyRaw': ?diskEncryptionKeyRaw,
      'diskEncryptionKeyRsa': ?diskEncryptionKeyRsa,
      'diskEncryptionKeySha256': ?diskEncryptionKeySha256,
      'diskEncryptionServiceAccount': ?diskEncryptionServiceAccount,
      'forceAttach': ?forceAttach,
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'mode': ?mode,
      'source': source,
    };
  }

  factory InstanceFromMachineImageAttachedDisk.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageAttachedDisk(
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      diskEncryptionKeyRaw: map['diskEncryptionKeyRaw'] == null ? null : map['diskEncryptionKeyRaw'] as String,
      diskEncryptionKeyRsa: map['diskEncryptionKeyRsa'] == null ? null : map['diskEncryptionKeyRsa'] as String,
      diskEncryptionKeySha256: map['diskEncryptionKeySha256'] == null ? null : map['diskEncryptionKeySha256'] as String,
      diskEncryptionServiceAccount: map['diskEncryptionServiceAccount'] == null ? null : map['diskEncryptionServiceAccount'] as String,
      forceAttach: map['forceAttach'] == null ? null : map['forceAttach'] as bool,
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : map['kmsKeySelfLink'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      source: map['source'] as String,
    );
  }
}

