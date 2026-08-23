// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_automated_backup_policy_encryption_config.dart';
import 'get_cluster_automated_backup_policy_quantity_based_retention.dart';
import 'get_cluster_automated_backup_policy_time_based_retention.dart';
import 'get_cluster_automated_backup_policy_weekly_schedule.dart';

class GetClusterAutomatedBackupPolicy {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.
  ///
  /// The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it will default to 1 hour.
  ///
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String> backupWindow;
  /// Whether automated backups are enabled.
  final pulumi.Input<bool> enabled;
  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  final pulumi.Input<List<GetClusterAutomatedBackupPolicyEncryptionConfig>> encryptionConfigs;
  /// Labels to apply to backups created using this configuration.
  final pulumi.Input<Map<String, String>> labels;
  /// (optional)
  /// The canonical id of the location.If it is not provided, the provider project is used. For example: us-east1.
  final pulumi.Input<String> location;
  /// Quantity-based Backup retention policy to retain recent backups. Conflicts with 'time_based_retention', both can't be set together.
  final pulumi.Input<List<GetClusterAutomatedBackupPolicyQuantityBasedRetention>> quantityBasedRetentions;
  /// Time-based Backup retention policy. Conflicts with 'quantity_based_retention', both can't be set together.
  final pulumi.Input<List<GetClusterAutomatedBackupPolicyTimeBasedRetention>> timeBasedRetentions;
  /// Weekly schedule for the Backup.
  final pulumi.Input<List<GetClusterAutomatedBackupPolicyWeeklySchedule>> weeklySchedules;

  /// Creates a new [GetClusterAutomatedBackupPolicy].
  /// [backupWindow] The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.
  /// [enabled] Whether automated backups are enabled.
  /// [encryptionConfigs] EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// [labels] Labels to apply to backups created using this configuration.
  /// [location] (optional)
  /// [quantityBasedRetentions] Quantity-based Backup retention policy to retain recent backups. Conflicts with 'time_based_retention', both can't be set together.
  /// [timeBasedRetentions] Time-based Backup retention policy. Conflicts with 'quantity_based_retention', both can't be set together.
  /// [weeklySchedules] Weekly schedule for the Backup.
  const GetClusterAutomatedBackupPolicy({
    required this.backupWindow,
    required this.enabled,
    required this.encryptionConfigs,
    required this.labels,
    required this.location,
    required this.quantityBasedRetentions,
    required this.timeBasedRetentions,
    required this.weeklySchedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupWindow': backupWindow,
      'enabled': enabled,
      'encryptionConfigs': pulumi.Input.mapInputValue<List<GetClusterAutomatedBackupPolicyEncryptionConfig>, List<Map<String, dynamic>>>(encryptionConfigs, (value) => pulumi.Input.encodeList<GetClusterAutomatedBackupPolicyEncryptionConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': labels,
      'location': location,
      'quantityBasedRetentions': pulumi.Input.mapInputValue<List<GetClusterAutomatedBackupPolicyQuantityBasedRetention>, List<Map<String, dynamic>>>(quantityBasedRetentions, (value) => pulumi.Input.encodeList<GetClusterAutomatedBackupPolicyQuantityBasedRetention, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeBasedRetentions': pulumi.Input.mapInputValue<List<GetClusterAutomatedBackupPolicyTimeBasedRetention>, List<Map<String, dynamic>>>(timeBasedRetentions, (value) => pulumi.Input.encodeList<GetClusterAutomatedBackupPolicyTimeBasedRetention, Map<String, dynamic>>(value, (value) => value.toMap())),
      'weeklySchedules': pulumi.Input.mapInputValue<List<GetClusterAutomatedBackupPolicyWeeklySchedule>, List<Map<String, dynamic>>>(weeklySchedules, (value) => pulumi.Input.encodeList<GetClusterAutomatedBackupPolicyWeeklySchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterAutomatedBackupPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterAutomatedBackupPolicy(
      backupWindow: pulumi.Input.fromValue(map['backupWindow'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      encryptionConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterAutomatedBackupPolicyEncryptionConfig>(map['encryptionConfigs']!, (value) => GetClusterAutomatedBackupPolicyEncryptionConfig.fromMap((value as Map).cast<String, dynamic>()))),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      quantityBasedRetentions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterAutomatedBackupPolicyQuantityBasedRetention>(map['quantityBasedRetentions']!, (value) => GetClusterAutomatedBackupPolicyQuantityBasedRetention.fromMap((value as Map).cast<String, dynamic>()))),
      timeBasedRetentions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterAutomatedBackupPolicyTimeBasedRetention>(map['timeBasedRetentions']!, (value) => GetClusterAutomatedBackupPolicyTimeBasedRetention.fromMap((value as Map).cast<String, dynamic>()))),
      weeklySchedules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterAutomatedBackupPolicyWeeklySchedule>(map['weeklySchedules']!, (value) => GetClusterAutomatedBackupPolicyWeeklySchedule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
