// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionDiskSourceSnapshotEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String> kmsKeyName;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in
  /// RFC 4648 base64 to either encrypt or decrypt this resource.
  final pulumi.Input<String> rawKey;
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  /// encryption key that protects this resource.
  final pulumi.Input<String> sha256;

  /// Creates a new [GetRegionDiskSourceSnapshotEncryptionKey].
  /// [kmsKeyName] The name of the encryption key that is stored in Google Cloud KMS.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in
  /// [sha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied
  const GetRegionDiskSourceSnapshotEncryptionKey({
    required this.kmsKeyName,
    required this.rawKey,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'rawKey': rawKey,
      'sha256': sha256,
    };
  }

  factory GetRegionDiskSourceSnapshotEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetRegionDiskSourceSnapshotEncryptionKey(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      rawKey: pulumi.Input.fromValue(map['rawKey'] as String),
      sha256: pulumi.Input.fromValue(map['sha256'] as String),
    );
  }
}
