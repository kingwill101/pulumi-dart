// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromMachineImageBootDiskInitializeParamsSourceImageEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  final pulumi.Input<String>? kmsKeySelfLink;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final pulumi.Input<String>? kmsKeyServiceAccount;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  final pulumi.Input<String>? rawKey;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  final pulumi.Input<String>? rsaEncryptedKey;
  /// The SHA256 hash of the encryption key used to encrypt this disk.
  final pulumi.Input<String>? sha256;

  /// Creates a new [InstanceFromMachineImageBootDiskInitializeParamsSourceImageEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  /// [sha256] The SHA256 hash of the encryption key used to encrypt this disk.
  const InstanceFromMachineImageBootDiskInitializeParamsSourceImageEncryptionKey({
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

  factory InstanceFromMachineImageBootDiskInitializeParamsSourceImageEncryptionKey.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageBootDiskInitializeParamsSourceImageEncryptionKey(
      kmsKeySelfLink: (() { final guardedValue = map['kmsKeySelfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyServiceAccount: (() { final guardedValue = map['kmsKeyServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawKey: (() { final guardedValue = map['rawKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaEncryptedKey: (() { final guardedValue = map['rsaEncryptedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha256: (() { final guardedValue = map['sha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
