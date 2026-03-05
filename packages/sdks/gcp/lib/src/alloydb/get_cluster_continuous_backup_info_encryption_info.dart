// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterContinuousBackupInfoEncryptionInfo {
  /// Output only. Type of encryption.
  final pulumi.Input<String> encryptionType;
  /// Output only. Cloud KMS key versions that are being used to protect the database or the backup.
  final pulumi.Input<List<String>> kmsKeyVersions;

  /// Creates a new [GetClusterContinuousBackupInfoEncryptionInfo].
  /// [encryptionType] Output only. Type of encryption.
  /// [kmsKeyVersions] Output only. Cloud KMS key versions that are being used to protect the database or the backup.
  GetClusterContinuousBackupInfoEncryptionInfo({
    required this.encryptionType,
    required this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': encryptionType,
      'kmsKeyVersions': kmsKeyVersions,
    };
  }

  factory GetClusterContinuousBackupInfoEncryptionInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterContinuousBackupInfoEncryptionInfo(
      encryptionType: pulumi.Input.fromValue(map['encryptionType'] as String),
      kmsKeyVersions: pulumi.Input.fromValue((map['kmsKeyVersions'] as List).cast<String>()),
    );
  }
}

