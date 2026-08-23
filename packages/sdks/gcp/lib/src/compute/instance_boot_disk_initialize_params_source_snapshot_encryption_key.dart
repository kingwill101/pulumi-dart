// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceBootDiskInitializeParamsSourceSnapshotEncryptionKey {
  /// The selfLink of the encryption key that is
  /// stored in Google Cloud KMS to decrypt the given image. Only one of `kmsKeySelfLink`, `rsaEncryptedKey` and `rawKey`
  /// may be set.
  final pulumi.Input<String>? kmsKeySelfLink;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final pulumi.Input<String>? kmsKeyServiceAccount;
  /// A 256-bit [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption),
  /// encoded in [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// to decrypt the given snapshot. Only one of `kmsKeySelfLink`, `rsaEncryptedKey` and `rawKey`
  /// may be set.
  final pulumi.Input<String>? rawKey;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to decrypt the given snapshot. Only one of `kmsKeySelfLink`, `rsaEncryptedKey` and `rawKey`
  /// may be set.
  final pulumi.Input<String>? rsaEncryptedKey;
  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) that protects this resource.
  final pulumi.Input<String>? sha256;

  /// Creates a new [InstanceBootDiskInitializeParamsSourceSnapshotEncryptionKey].
  /// [kmsKeySelfLink] The selfLink of the encryption key that is
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [rawKey] A 256-bit [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption),
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to decrypt the given snapshot. Only one of `kmsKeySelfLink`, `rsaEncryptedKey` and `rawKey`
  /// [sha256] The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  const InstanceBootDiskInitializeParamsSourceSnapshotEncryptionKey({
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

  factory InstanceBootDiskInitializeParamsSourceSnapshotEncryptionKey.fromMap(Map<String, dynamic> map) {
    return InstanceBootDiskInitializeParamsSourceSnapshotEncryptionKey(
      kmsKeySelfLink: (() { final guardedValue = map['kmsKeySelfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyServiceAccount: (() { final guardedValue = map['kmsKeyServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawKey: (() { final guardedValue = map['rawKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaEncryptedKey: (() { final guardedValue = map['rsaEncryptedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha256: (() { final guardedValue = map['sha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
