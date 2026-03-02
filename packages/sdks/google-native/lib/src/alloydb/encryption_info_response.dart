// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EncryptionInfo describes the encryption information of a cluster or a backup.
class EncryptionInfoResponse {
  /// Type of encryption.
  final pulumi.Input<String> encryptionType;
  /// Cloud KMS key versions that are being used to protect the database or the backup.
  final pulumi.Input<List<String>> kmsKeyVersions;

  /// Creates a new [EncryptionInfoResponse].
  /// [encryptionType] Type of encryption.
  /// [kmsKeyVersions] Cloud KMS key versions that are being used to protect the database or the backup.
  EncryptionInfoResponse({
    required this.encryptionType,
    required this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': encryptionType,
      'kmsKeyVersions': kmsKeyVersions,
    };
  }

  factory EncryptionInfoResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionInfoResponse(
      encryptionType: (map['encryptionType'] as String).input(),
      kmsKeyVersions: ((map['kmsKeyVersions'] as List).cast<String>()).input(),
    );
  }
}

