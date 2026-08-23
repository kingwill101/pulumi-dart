// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceTemplateDiskSourceImageEncryptionKey {
  /// The self link of the encryption key that is
  /// stored in Google Cloud KMS. Only one of `kmsKeySelfLink`, `rsaEncryptedKey` and `rawKey`
  /// may be set.
  final pulumi.Input<String>? kmsKeySelfLink;
  /// The service account being used for the
  /// encryption request for the given KMS key. If absent, the Compute Engine
  /// default service account is used.
  final pulumi.Input<String>? kmsKeyServiceAccount;
  /// A 256-bit [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption),
  /// encoded in [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// to decrypt the given image. Only one of `kmsKeySelfLink`, `rsaEncryptedKey` and `rawKey`
  /// may be set.
  final pulumi.Input<String>? rawKey;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to decrypt the given image. Only one of `kmsKeySelfLink`, `rsaEncryptedKey` and `rawKey`
  /// may be set.
  final pulumi.Input<String>? rsaEncryptedKey;

  /// Creates a new [RegionInstanceTemplateDiskSourceImageEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is
  /// [kmsKeyServiceAccount] The service account being used for the
  /// [rawKey] A 256-bit [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption),
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to decrypt the given image. Only one of `kmsKeySelfLink`, `rsaEncryptedKey` and `rawKey`
  const RegionInstanceTemplateDiskSourceImageEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'rawKey': ?rawKey,
      'rsaEncryptedKey': ?rsaEncryptedKey,
    };
  }

  factory RegionInstanceTemplateDiskSourceImageEncryptionKey.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateDiskSourceImageEncryptionKey(
      kmsKeySelfLink: (() { final guardedValue = map['kmsKeySelfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyServiceAccount: (() { final guardedValue = map['kmsKeyServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawKey: (() { final guardedValue = map['rawKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaEncryptedKey: (() { final guardedValue = map['rsaEncryptedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
