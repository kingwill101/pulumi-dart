// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupEncryptionInfo {
  /// (Output)
  /// Output only. Type of encryption.
  final pulumi.Input<String>? encryptionType;
  /// (Output)
  /// Output only. Cloud KMS key versions that are being used to protect the database or the backup.
  final pulumi.Input<List<String>>? kmsKeyVersions;

  /// Creates a new [BackupEncryptionInfo].
  /// [encryptionType] (Output)
  /// [kmsKeyVersions] (Output)
  BackupEncryptionInfo({
    this.encryptionType,
    this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': ?encryptionType,
      'kmsKeyVersions': ?kmsKeyVersions,
    };
  }

  factory BackupEncryptionInfo.fromMap(Map<String, dynamic> map) {
    return BackupEncryptionInfo(
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType']! as String).input(),
      kmsKeyVersions: map['kmsKeyVersions'] == null ? null : ((map['kmsKeyVersions']! as List).cast<String>()).input(),
    );
  }
}

