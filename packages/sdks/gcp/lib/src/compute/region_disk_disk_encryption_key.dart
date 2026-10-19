// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionDiskDiskEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String?>? kmsKeyName;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? rawKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `rawKey` or `rawKeyWo` can only be set.
  final pulumi.Input<String?>? rawKeyWo;
  /// Triggers update of `rawKeyWo` write-only. Increment this value when an update to `rawKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? rawKeyWoVersion;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// customer-supplied encryption key to either encrypt or decrypt
  /// this resource. You can provide either the rawKey or the rsaEncryptedKey.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? rsaEncryptedKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// customer-supplied encryption key to either encrypt or decrypt
  /// this resource. You can provide either the rawKey or the rsaEncryptedKey.
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `rsaEncryptedKey` or `rsaEncryptedKeyWo` can only be set.
  final pulumi.Input<String?>? rsaEncryptedKeyWo;
  /// Triggers update of `rsaEncryptedKeyWo` write-only. Increment this value when an update to `rsaEncryptedKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String?>? rsaEncryptedKeyWoVersion;
  /// (Output)
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final pulumi.Input<String?>? sha256;

  /// Creates a new [RegionDiskDiskEncryptionKey].
  /// [kmsKeyName] The name of the encryption key that is stored in Google Cloud KMS.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rawKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [rawKeyWoVersion] Triggers update of `rawKeyWo` write-only. Increment this value when an update to `rawKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// [rsaEncryptedKeyWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [rsaEncryptedKeyWoVersion] Triggers update of `rsaEncryptedKeyWo` write-only. Increment this value when an update to `rsaEncryptedKeyWo` is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [sha256] (Output)
  const RegionDiskDiskEncryptionKey({
    this.kmsKeyName,
    this.rawKey,
    this.rawKeyWo,
    this.rawKeyWoVersion,
    this.rsaEncryptedKey,
    this.rsaEncryptedKeyWo,
    this.rsaEncryptedKeyWoVersion,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'rawKey': ?rawKey,
      'rawKeyWo': ?rawKeyWo,
      'rawKeyWoVersion': ?rawKeyWoVersion,
      'rsaEncryptedKey': ?rsaEncryptedKey,
      'rsaEncryptedKeyWo': ?rsaEncryptedKeyWo,
      'rsaEncryptedKeyWoVersion': ?rsaEncryptedKeyWoVersion,
      'sha256': ?sha256,
    };
  }

  factory RegionDiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return RegionDiskDiskEncryptionKey(
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawKey: (() { final guardedValue = map['rawKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawKeyWo: (() { final guardedValue = map['rawKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawKeyWoVersion: (() { final guardedValue = map['rawKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaEncryptedKey: (() { final guardedValue = map['rsaEncryptedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaEncryptedKeyWo: (() { final guardedValue = map['rsaEncryptedKeyWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rsaEncryptedKeyWoVersion: (() { final guardedValue = map['rsaEncryptedKeyWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha256: (() { final guardedValue = map['sha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
