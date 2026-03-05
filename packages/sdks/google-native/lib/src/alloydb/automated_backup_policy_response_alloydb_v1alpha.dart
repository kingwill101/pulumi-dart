// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response_alloydb_v1alpha.dart';
import 'quantity_based_retention_response_alloydb_v1alpha.dart';
import 'time_based_retention_response_alloydb_v1alpha.dart';
import 'weekly_schedule_response_alloydb_v1alpha.dart';

/// Message describing the user-specified automated backup policy. All fields in the automated backup policy are optional. Defaults for each field are provided if they are not set.
class AutomatedBackupPolicyResponseAlloydbV1alpha {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  final pulumi.Input<String> backupWindow;
  /// Whether automated automated backups are enabled. If not set, defaults to true.
  final pulumi.Input<bool> enabled;
  /// Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfigResponseAlloydbV1alpha> encryptionConfig;
  /// Labels to apply to backups created using this configuration.
  final pulumi.Input<Map<String, String>> labels;
  /// The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  final pulumi.Input<String> location;
  /// Quantity-based Backup retention policy to retain recent backups.
  final pulumi.Input<QuantityBasedRetentionResponseAlloydbV1alpha> quantityBasedRetention;
  /// Time-based Backup retention policy.
  final pulumi.Input<TimeBasedRetentionResponseAlloydbV1alpha> timeBasedRetention;
  /// Weekly schedule for the Backup.
  final pulumi.Input<WeeklyScheduleResponseAlloydbV1alpha> weeklySchedule;

  /// Creates a new [AutomatedBackupPolicyResponseAlloydbV1alpha].
  /// [backupWindow] The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  /// [enabled] Whether automated automated backups are enabled. If not set, defaults to true.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [labels] Labels to apply to backups created using this configuration.
  /// [location] The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  /// [quantityBasedRetention] Quantity-based Backup retention policy to retain recent backups.
  /// [timeBasedRetention] Time-based Backup retention policy.
  /// [weeklySchedule] Weekly schedule for the Backup.
  AutomatedBackupPolicyResponseAlloydbV1alpha({
    required this.backupWindow,
    required this.enabled,
    required this.encryptionConfig,
    required this.labels,
    required this.location,
    required this.quantityBasedRetention,
    required this.timeBasedRetention,
    required this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupWindow': backupWindow,
      'enabled': enabled,
      'encryptionConfig': pulumi.Input.mapInputValue<EncryptionConfigResponseAlloydbV1alpha, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'labels': labels,
      'location': location,
      'quantityBasedRetention': pulumi.Input.mapInputValue<QuantityBasedRetentionResponseAlloydbV1alpha, Map<String, dynamic>>(quantityBasedRetention, (value) => value.toMap()),
      'timeBasedRetention': pulumi.Input.mapInputValue<TimeBasedRetentionResponseAlloydbV1alpha, Map<String, dynamic>>(timeBasedRetention, (value) => value.toMap()),
      'weeklySchedule': pulumi.Input.mapInputValue<WeeklyScheduleResponseAlloydbV1alpha, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory AutomatedBackupPolicyResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return AutomatedBackupPolicyResponseAlloydbV1alpha(
      backupWindow: pulumi.Input.fromValue(map['backupWindow'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      encryptionConfig: pulumi.Input.fromValue(EncryptionConfigResponseAlloydbV1alpha.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      quantityBasedRetention: pulumi.Input.fromValue(QuantityBasedRetentionResponseAlloydbV1alpha.fromMap((map['quantityBasedRetention']! as Map).cast<String, dynamic>())),
      timeBasedRetention: pulumi.Input.fromValue(TimeBasedRetentionResponseAlloydbV1alpha.fromMap((map['timeBasedRetention']! as Map).cast<String, dynamic>())),
      weeklySchedule: pulumi.Input.fromValue(WeeklyScheduleResponseAlloydbV1alpha.fromMap((map['weeklySchedule']! as Map).cast<String, dynamic>())),
    );
  }
}

