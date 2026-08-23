// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionDiskSourceImageEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String> kmsKeyName;
  /// The service account used for the encryption request for the given KMS key.
  /// If absent, the Compute Engine Service Agent service account is used.
  final pulumi.Input<String> kmsKeyServiceAccount;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final pulumi.Input<String> rawKey;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// customer-supplied encryption key to either encrypt or decrypt
  /// this resource. You can provide either the rawKey or the rsaEncryptedKey.
  final pulumi.Input<String> rsaEncryptedKey;
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final pulumi.Input<String> sha256;

  /// Creates a new [GetRegionDiskSourceImageEncryptionKey].
  /// [kmsKeyName] The name of the encryption key that is stored in Google Cloud KMS.
  /// [kmsKeyServiceAccount] The service account used for the encryption request for the given KMS key.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
  /// [sha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  const GetRegionDiskSourceImageEncryptionKey({
    required this.kmsKeyName,
    required this.kmsKeyServiceAccount,
    required this.rawKey,
    required this.rsaEncryptedKey,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
      'rawKey': rawKey,
      'rsaEncryptedKey': rsaEncryptedKey,
      'sha256': sha256,
    };
  }

  factory GetRegionDiskSourceImageEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskSourceImageEncryptionKey(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      kmsKeyServiceAccount: pulumi.Input.fromValue(map['kmsKeyServiceAccount'] as String),
      rawKey: pulumi.Input.fromValue(map['rawKey'] as String),
      rsaEncryptedKey: pulumi.Input.fromValue(map['rsaEncryptedKey'] as String),
      sha256: pulumi.Input.fromValue(map['sha256'] as String),
    );
  }
}
