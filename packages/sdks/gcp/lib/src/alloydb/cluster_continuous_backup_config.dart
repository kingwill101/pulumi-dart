// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_continuous_backup_config_encryption_config.dart';

class ClusterContinuousBackupConfig {
  /// Whether continuous backup recovery is enabled. If not set, defaults to true.
  final pulumi.Input<bool>? enabled;
  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final pulumi.Input<ClusterContinuousBackupConfigEncryptionConfig>? encryptionConfig;
  /// The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.
  /// If not set, defaults to 14 days.
  final pulumi.Input<int>? recoveryWindowDays;

  /// Creates a new [ClusterContinuousBackupConfig].
  /// [enabled] Whether continuous backup recovery is enabled. If not set, defaults to true.
  /// [encryptionConfig] EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// [recoveryWindowDays] The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.
  ClusterContinuousBackupConfig({
    this.enabled,
    this.encryptionConfig,
    this.recoveryWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterContinuousBackupConfigEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'recoveryWindowDays': ?recoveryWindowDays,
    };
  }

  factory ClusterContinuousBackupConfig.fromMap(Map<String, dynamic> map) {
    return ClusterContinuousBackupConfig(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      encryptionConfig: map['encryptionConfig'] == null ? null : (ClusterContinuousBackupConfigEncryptionConfig.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      recoveryWindowDays: map['recoveryWindowDays'] == null ? null : (map['recoveryWindowDays'] as int).input(),
    );
  }
}

