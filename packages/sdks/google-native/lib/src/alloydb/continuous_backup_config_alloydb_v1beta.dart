// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_alloydb_v1beta.dart';

/// ContinuousBackupConfig describes the continuous backups recovery configurations of a cluster.
class ContinuousBackupConfigAlloydbV1beta {
  /// Whether ContinuousBackup is enabled.
  final bool? enabled;
  /// The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfigAlloydbV1beta? encryptionConfig;
  /// The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  final int? recoveryWindowDays;

  /// Creates a new [ContinuousBackupConfigAlloydbV1beta].
  /// [enabled] Whether ContinuousBackup is enabled.
  /// [encryptionConfig] The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [recoveryWindowDays] The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  ContinuousBackupConfigAlloydbV1beta({
    this.enabled,
    this.encryptionConfig,
    this.recoveryWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'encryptionConfig': ?encryptionConfig == null ? null : encryptionConfig!.toMap(),
      'recoveryWindowDays': ?recoveryWindowDays,
    };
  }

  factory ContinuousBackupConfigAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupConfigAlloydbV1beta(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      encryptionConfig: map['encryptionConfig'] == null ? null : EncryptionConfigAlloydbV1beta.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>()),
      recoveryWindowDays: map['recoveryWindowDays'] == null ? null : map['recoveryWindowDays'] as int,
    );
  }
}

