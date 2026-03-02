// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAttachedDisk {
  /// Name with which the attached disk will be accessible
  /// under `/dev/disk/by-id/google-*`
  final pulumi.Input<String>? deviceName;
  /// A 256-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption),
  /// encoded in [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// to encrypt this disk. Only one of `kms_key_self_link`, `disk_encryption_key_rsa` and `disk_encryption_key_raw`
  /// may be set.
  final pulumi.Input<String>? diskEncryptionKeyRaw;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to encrypt this disk. Only one of `kms_key_self_link`, `disk_encryption_key_rsa` and `disk_encryption_key_raw`
  /// may be set.
  final pulumi.Input<String>? diskEncryptionKeyRsa;
  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) that protects this resource.
  final pulumi.Input<String>? diskEncryptionKeySha256;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final pulumi.Input<String>? diskEncryptionServiceAccount;
  /// Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  final pulumi.Input<bool>? forceAttach;
  /// The self_link of the encryption key that is
  /// stored in Google Cloud KMS to encrypt this disk. Only one of `kms_key_self_link`, `disk_encryption_key_rsa` and `disk_encryption_key_raw`
  /// may be set.
  final pulumi.Input<String>? kmsKeySelfLink;
  /// Either "READ_ONLY" or "READ_WRITE", defaults to "READ_WRITE"
  /// If you have a persistent disk with data that you want to share
  /// between multiple instances, detach it from any read-write instances and
  /// attach it to one or more instances in read-only mode.
  final pulumi.Input<String>? mode;
  /// The name or self_link of the disk to attach to this instance.
  final pulumi.Input<String> source;

  /// Creates a new [InstanceAttachedDisk].
  /// [deviceName] Name with which the attached disk will be accessible
  /// [diskEncryptionKeyRaw] A 256-bit [customer-supplied encryption key]
  /// [diskEncryptionKeyRsa] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key]
  /// [diskEncryptionKeySha256] The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// [diskEncryptionServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [forceAttach] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  /// [kmsKeySelfLink] The self_link of the encryption key that is
  /// [mode] Either "READ_ONLY" or "READ_WRITE", defaults to "READ_WRITE"
  /// [source] The name or self_link of the disk to attach to this instance.
  InstanceAttachedDisk({
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

  factory InstanceAttachedDisk.fromMap(Map<String, dynamic> map) {
    return InstanceAttachedDisk(
      deviceName: map['deviceName'] == null ? null : (map['deviceName']! as String).input(),
      diskEncryptionKeyRaw: map['diskEncryptionKeyRaw'] == null ? null : (map['diskEncryptionKeyRaw']! as String).input(),
      diskEncryptionKeyRsa: map['diskEncryptionKeyRsa'] == null ? null : (map['diskEncryptionKeyRsa']! as String).input(),
      diskEncryptionKeySha256: map['diskEncryptionKeySha256'] == null ? null : (map['diskEncryptionKeySha256']! as String).input(),
      diskEncryptionServiceAccount: map['diskEncryptionServiceAccount'] == null ? null : (map['diskEncryptionServiceAccount']! as String).input(),
      forceAttach: map['forceAttach'] == null ? null : (map['forceAttach']! as bool).input(),
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : (map['kmsKeySelfLink']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      source: (map['source'] as String).input(),
    );
  }
}

