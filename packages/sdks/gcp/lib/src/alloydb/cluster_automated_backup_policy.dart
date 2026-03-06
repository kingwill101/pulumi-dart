// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_automated_backup_policy_encryption_config.dart';
import 'cluster_automated_backup_policy_quantity_based_retention.dart';
import 'cluster_automated_backup_policy_time_based_retention.dart';
import 'cluster_automated_backup_policy_weekly_schedule.dart';

class ClusterAutomatedBackupPolicy {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.
  /// The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it will default to 1 hour.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? backupWindow;
  /// Whether automated backups are enabled.
  final pulumi.Input<bool>? enabled;
  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupPolicyEncryptionConfig>? encryptionConfig;
  /// Labels to apply to backups created using this configuration.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster.
  final pulumi.Input<String>? location;
  /// Quantity-based Backup retention policy to retain recent backups. Conflicts with 'time_based_retention', both can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupPolicyQuantityBasedRetention>? quantityBasedRetention;
  /// Time-based Backup retention policy. Conflicts with 'quantity_based_retention', both can't be set together.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupPolicyTimeBasedRetention>? timeBasedRetention;
  /// Weekly schedule for the Backup.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutomatedBackupPolicyWeeklySchedule>? weeklySchedule;

  /// Creates a new [ClusterAutomatedBackupPolicy].
  /// [backupWindow] The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.
  /// [enabled] Whether automated backups are enabled.
  /// [encryptionConfig] EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// [labels] Labels to apply to backups created using this configuration.
  /// [location] The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster.
  /// [quantityBasedRetention] Quantity-based Backup retention policy to retain recent backups. Conflicts with 'time_based_retention', both can't be set together.
  /// [timeBasedRetention] Time-based Backup retention policy. Conflicts with 'quantity_based_retention', both can't be set together.
  /// [weeklySchedule] Weekly schedule for the Backup.
  const ClusterAutomatedBackupPolicy({
    this.backupWindow,
    this.enabled,
    this.encryptionConfig,
    this.labels,
    this.location,
    this.quantityBasedRetention,
    this.timeBasedRetention,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupWindow': ?backupWindow,
      'enabled': ?enabled,
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<ClusterAutomatedBackupPolicyEncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'quantityBasedRetention': ?pulumi.Input.mapOptionalInputValue<ClusterAutomatedBackupPolicyQuantityBasedRetention, Map<String, dynamic>>(quantityBasedRetention, (value) => value.toMap()),
      'timeBasedRetention': ?pulumi.Input.mapOptionalInputValue<ClusterAutomatedBackupPolicyTimeBasedRetention, Map<String, dynamic>>(timeBasedRetention, (value) => value.toMap()),
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<ClusterAutomatedBackupPolicyWeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ClusterAutomatedBackupPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterAutomatedBackupPolicy(
      backupWindow: (() { final guardedValue = map['backupWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutomatedBackupPolicyEncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quantityBasedRetention: (() { final guardedValue = map['quantityBasedRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutomatedBackupPolicyQuantityBasedRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeBasedRetention: (() { final guardedValue = map['timeBasedRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutomatedBackupPolicyTimeBasedRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterAutomatedBackupPolicyWeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

