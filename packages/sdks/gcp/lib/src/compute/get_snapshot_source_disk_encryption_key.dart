// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotSourceDiskEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String> kmsKeySelfLink;
  /// The service account used for the encryption request for the given KMS key.
  /// If absent, the Compute Engine Service Agent service account is used.
  final pulumi.Input<String> kmsKeyServiceAccount;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final pulumi.Input<String> rawKey;
  /// Specifies an encryption key stored in Google Cloud KMS, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final pulumi.Input<String> rsaEncryptedKey;

  /// Creates a new [GetSnapshotSourceDiskEncryptionKey].
  /// [kmsKeySelfLink] The name of the encryption key that is stored in Google Cloud KMS.
  /// [kmsKeyServiceAccount] The service account used for the encryption request for the given KMS key.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [rsaEncryptedKey] Specifies an encryption key stored in Google Cloud KMS, encoded in
  GetSnapshotSourceDiskEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
    required this.rawKey,
    required this.rsaEncryptedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': kmsKeySelfLink,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
      'rawKey': rawKey,
      'rsaEncryptedKey': rsaEncryptedKey,
    };
  }

  factory GetSnapshotSourceDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetSnapshotSourceDiskEncryptionKey(
      kmsKeySelfLink: (map['kmsKeySelfLink'] as String).input(),
      kmsKeyServiceAccount: (map['kmsKeyServiceAccount'] as String).input(),
      rawKey: (map['rawKey'] as String).input(),
      rsaEncryptedKey: (map['rsaEncryptedKey'] as String).input(),
    );
  }
}

