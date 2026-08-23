// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupVaultEncryptionConfig {
  /// The Resource name of the Cloud KMS key to be used to encrypt new backups. The key must be in the same location as the backup vault. The key must be a Cloud KMS CryptoKey.
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [BackupVaultEncryptionConfig].
  /// [kmsKeyName] The Resource name of the Cloud KMS key to be used to encrypt new backups. The key must be in the same location as the backup vault. The key must be a Cloud KMS CryptoKey.
  const BackupVaultEncryptionConfig({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory BackupVaultEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return BackupVaultEncryptionConfig(
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
