// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionDiskDiskEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String> kmsKeyName;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final pulumi.Input<String> rawKey;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final pulumi.Input<String> rawKeyWo;
  /// Triggers update of 'raw_key_wo' write-only. Increment this value when an update to 'raw_key_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> rawKeyWoVersion;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// customer-supplied encryption key to either encrypt or decrypt
  /// this resource. You can provide either the rawKey or the rsaEncryptedKey.
  final pulumi.Input<String> rsaEncryptedKey;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// customer-supplied encryption key to either encrypt or decrypt
  /// this resource. You can provide either the rawKey or the rsaEncryptedKey.
  final pulumi.Input<String> rsaEncryptedKeyWo;
  /// Triggers update of 'rsa_encrypted_key_wo' write-only. Increment this value when an update to 'rsa_encrypted_key_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<String> rsaEncryptedKeyWoVersion;
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final pulumi.Input<String> sha256;

  /// Creates a new [GetRegionDiskDiskEncryptionKey].
  /// [kmsKeyName] The name of the encryption key that is stored in Google Cloud KMS.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rawKeyWo] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rawKeyWoVersion] Triggers update of 'raw_key_wo' write-only. Increment this value when an update to 'raw_key_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// [rsaEncryptedKeyWo] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// [rsaEncryptedKeyWoVersion] Triggers update of 'rsa_encrypted_key_wo' write-only. Increment this value when an update to 'rsa_encrypted_key_wo' is needed. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// [sha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  const GetRegionDiskDiskEncryptionKey({
    required this.kmsKeyName,
    required this.rawKey,
    required this.rawKeyWo,
    required this.rawKeyWoVersion,
    required this.rsaEncryptedKey,
    required this.rsaEncryptedKeyWo,
    required this.rsaEncryptedKeyWoVersion,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'rawKey': rawKey,
      'rawKeyWo': rawKeyWo,
      'rawKeyWoVersion': rawKeyWoVersion,
      'rsaEncryptedKey': rsaEncryptedKey,
      'rsaEncryptedKeyWo': rsaEncryptedKeyWo,
      'rsaEncryptedKeyWoVersion': rsaEncryptedKeyWoVersion,
      'sha256': sha256,
    };
  }

  factory GetRegionDiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskDiskEncryptionKey(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      rawKey: pulumi.Input.fromValue(map['rawKey'] as String),
      rawKeyWo: pulumi.Input.fromValue(map['rawKeyWo'] as String),
      rawKeyWoVersion: pulumi.Input.fromValue(map['rawKeyWoVersion'] as String),
      rsaEncryptedKey: pulumi.Input.fromValue(map['rsaEncryptedKey'] as String),
      rsaEncryptedKeyWo: pulumi.Input.fromValue(map['rsaEncryptedKeyWo'] as String),
      rsaEncryptedKeyWoVersion: pulumi.Input.fromValue(map['rsaEncryptedKeyWoVersion'] as String),
      sha256: pulumi.Input.fromValue(map['sha256'] as String),
    );
  }
}
