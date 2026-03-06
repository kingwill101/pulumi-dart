// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupScheduleEncryptionConfig {
  /// The encryption type of backups created by the backup schedule.
  /// Possible values are USE_DATABASE_ENCRYPTION, GOOGLE_DEFAULT_ENCRYPTION, or CUSTOMER_MANAGED_ENCRYPTION.
  /// If you use CUSTOMER_MANAGED_ENCRYPTION, you must specify a kmsKeyName.
  /// If your backup type is incremental-backup, the encryption type must be GOOGLE_DEFAULT_ENCRYPTION.
  /// Possible values are: `USE_DATABASE_ENCRYPTION`, `GOOGLE_DEFAULT_ENCRYPTION`, `CUSTOMER_MANAGED_ENCRYPTION`.
  final pulumi.Input<String> encryptionType;
  /// The resource name of the Cloud KMS key to use for encryption.
  /// Format: 'projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}'
  final pulumi.Input<String>? kmsKeyName;
  /// Fully qualified name of the KMS keys to use to encrypt this database. The keys must exist
  /// in the same locations as the Spanner Database.
  final pulumi.Input<List<String>>? kmsKeyNames;

  /// Creates a new [BackupScheduleEncryptionConfig].
  /// [encryptionType] The encryption type of backups created by the backup schedule.
  /// [kmsKeyName] The resource name of the Cloud KMS key to use for encryption.
  /// [kmsKeyNames] Fully qualified name of the KMS keys to use to encrypt this database. The keys must exist
  const BackupScheduleEncryptionConfig({
    required this.encryptionType,
    this.kmsKeyName,
    this.kmsKeyNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': encryptionType,
      'kmsKeyName': ?kmsKeyName,
      'kmsKeyNames': ?kmsKeyNames,
    };
  }

  factory BackupScheduleEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return BackupScheduleEncryptionConfig(
      encryptionType: pulumi.Input.fromValue(map['encryptionType'] as String),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyNames: (() { final guardedValue = map['kmsKeyNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

