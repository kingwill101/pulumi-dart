// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceAttachedDisk {
  /// Name with which the attached disk is accessible
  /// under `/dev/disk/by-id/`
  final pulumi.Input<String> deviceName;
  /// A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  final pulumi.Input<String> diskEncryptionKeyRaw;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  final pulumi.Input<String> diskEncryptionKeyRsa;
  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key]
  /// (&lt;https://cloud.google.com/compute/docs/disks/customer-supplied-encryption&gt;) that protects this resource.
  final pulumi.Input<String> diskEncryptionKeySha256;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used
  final pulumi.Input<String> diskEncryptionServiceAccount;
  /// Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  final pulumi.Input<bool> forceAttach;
  /// The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  final pulumi.Input<String> kmsKeySelfLink;
  /// Read/write mode for the disk. One of `"READ_ONLY"` or `"READ_WRITE"`.
  final pulumi.Input<String> mode;
  /// The self_link of the disk attached to this instance.
  final pulumi.Input<String> source;

  /// Creates a new [GetInstanceAttachedDisk].
  /// [deviceName] Name with which the attached disk is accessible
  /// [diskEncryptionKeyRaw] A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  /// [diskEncryptionKeyRsa] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  /// [diskEncryptionKeySha256] The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// [diskEncryptionServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used
  /// [forceAttach] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  /// [kmsKeySelfLink] The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_rsa and disk_encryption_key_raw may be set.
  /// [mode] Read/write mode for the disk. One of `"READ_ONLY"` or `"READ_WRITE"`.
  /// [source] The self_link of the disk attached to this instance.
  GetInstanceAttachedDisk({
    required this.deviceName,
    required this.diskEncryptionKeyRaw,
    required this.diskEncryptionKeyRsa,
    required this.diskEncryptionKeySha256,
    required this.diskEncryptionServiceAccount,
    required this.forceAttach,
    required this.kmsKeySelfLink,
    required this.mode,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': deviceName,
      'diskEncryptionKeyRaw': diskEncryptionKeyRaw,
      'diskEncryptionKeyRsa': diskEncryptionKeyRsa,
      'diskEncryptionKeySha256': diskEncryptionKeySha256,
      'diskEncryptionServiceAccount': diskEncryptionServiceAccount,
      'forceAttach': forceAttach,
      'kmsKeySelfLink': kmsKeySelfLink,
      'mode': mode,
      'source': source,
    };
  }

  factory GetInstanceAttachedDisk.fromMap(Map<String, dynamic> map) {
    return GetInstanceAttachedDisk(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      diskEncryptionKeyRaw: pulumi.Input.fromValue(map['diskEncryptionKeyRaw'] as String),
      diskEncryptionKeyRsa: pulumi.Input.fromValue(map['diskEncryptionKeyRsa'] as String),
      diskEncryptionKeySha256: pulumi.Input.fromValue(map['diskEncryptionKeySha256'] as String),
      diskEncryptionServiceAccount: pulumi.Input.fromValue(map['diskEncryptionServiceAccount'] as String),
      forceAttach: pulumi.Input.fromValue(map['forceAttach'] as bool),
      kmsKeySelfLink: pulumi.Input.fromValue(map['kmsKeySelfLink'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
    );
  }
}

