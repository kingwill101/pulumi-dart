// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config.dart';
import 'quantity_based_retention.dart';
import 'time_based_retention.dart';
import 'weekly_schedule.dart';

/// Message describing the user-specified automated backup policy. All fields in the automated backup policy are optional. Defaults for each field are provided if they are not set.
class AutomatedBackupPolicy {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  final pulumi.Input<String>? backupWindow;
  /// Whether automated automated backups are enabled. If not set, defaults to true.
  final pulumi.Input<bool>? enabled;
  /// Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  /// Labels to apply to backups created using this configuration.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  final pulumi.Input<String>? location;
  /// Quantity-based Backup retention policy to retain recent backups.
  final pulumi.Input<QuantityBasedRetention>? quantityBasedRetention;
  /// Time-based Backup retention policy.
  final pulumi.Input<TimeBasedRetention>? timeBasedRetention;
  /// Weekly schedule for the Backup.
  final pulumi.Input<WeeklySchedule>? weeklySchedule;

  /// Creates a new [AutomatedBackupPolicy].
  /// [backupWindow] The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  /// [enabled] Whether automated automated backups are enabled. If not set, defaults to true.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [labels] Labels to apply to backups created using this configuration.
  /// [location] The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  /// [quantityBasedRetention] Quantity-based Backup retention policy to retain recent backups.
  /// [timeBasedRetention] Time-based Backup retention policy.
  /// [weeklySchedule] Weekly schedule for the Backup.
  const AutomatedBackupPolicy({
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
      'encryptionConfig': ?pulumi.Input.mapOptionalInputValue<EncryptionConfig, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'quantityBasedRetention': ?pulumi.Input.mapOptionalInputValue<QuantityBasedRetention, Map<String, dynamic>>(quantityBasedRetention, (value) => value.toMap()),
      'timeBasedRetention': ?pulumi.Input.mapOptionalInputValue<TimeBasedRetention, Map<String, dynamic>>(timeBasedRetention, (value) => value.toMap()),
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<WeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory AutomatedBackupPolicy.fromMap(Map<String, dynamic> map) {
    return AutomatedBackupPolicy(
      backupWindow: (() { final guardedValue = map['backupWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quantityBasedRetention: (() { final guardedValue = map['quantityBasedRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuantityBasedRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeBasedRetention: (() { final guardedValue = map['timeBasedRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimeBasedRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
