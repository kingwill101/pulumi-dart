// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_retention_settings.dart';

/// Database instance backup configuration.
class BackupConfiguration {
  /// Backup retention settings.
  final pulumi.Input<BackupRetentionSettings>? backupRetentionSettings;
  /// (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
  final pulumi.Input<bool>? binaryLogEnabled;
  /// Whether this configuration is enabled.
  final pulumi.Input<bool>? enabled;
  /// This is always `sql#backupConfiguration`.
  final pulumi.Input<String>? kind;
  /// Location of the backup
  final pulumi.Input<String>? location;
  /// Whether point in time recovery is enabled.
  final pulumi.Input<bool>? pointInTimeRecoveryEnabled;
  /// Reserved for future use.
  final pulumi.Input<bool>? replicationLogArchivingEnabled;
  /// Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`.
  final pulumi.Input<String>? startTime;
  /// The number of days of transaction logs we retain for point in time restore, from 1-7.
  final pulumi.Input<int>? transactionLogRetentionDays;

  /// Creates a new [BackupConfiguration].
  /// [backupRetentionSettings] Backup retention settings.
  /// [binaryLogEnabled] (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
  /// [enabled] Whether this configuration is enabled.
  /// [kind] This is always `sql#backupConfiguration`.
  /// [location] Location of the backup
  /// [pointInTimeRecoveryEnabled] Whether point in time recovery is enabled.
  /// [replicationLogArchivingEnabled] Reserved for future use.
  /// [startTime] Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`.
  /// [transactionLogRetentionDays] The number of days of transaction logs we retain for point in time restore, from 1-7.
  BackupConfiguration({
    this.backupRetentionSettings,
    this.binaryLogEnabled,
    this.enabled,
    this.kind,
    this.location,
    this.pointInTimeRecoveryEnabled,
    this.replicationLogArchivingEnabled,
    this.startTime,
    this.transactionLogRetentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionSettings': ?pulumi.Input.mapOptionalInputValue<BackupRetentionSettings, Map<String, dynamic>>(backupRetentionSettings, (value) => value.toMap()),
      'binaryLogEnabled': ?binaryLogEnabled,
      'enabled': ?enabled,
      'kind': ?kind,
      'location': ?location,
      'pointInTimeRecoveryEnabled': ?pointInTimeRecoveryEnabled,
      'replicationLogArchivingEnabled': ?replicationLogArchivingEnabled,
      'startTime': ?startTime,
      'transactionLogRetentionDays': ?transactionLogRetentionDays,
    };
  }

  factory BackupConfiguration.fromMap(Map<String, dynamic> map) {
    return BackupConfiguration(
      backupRetentionSettings: map['backupRetentionSettings'] == null ? null : (BackupRetentionSettings.fromMap((map['backupRetentionSettings']! as Map).cast<String, dynamic>())).input(),
      binaryLogEnabled: map['binaryLogEnabled'] == null ? null : (map['binaryLogEnabled']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      pointInTimeRecoveryEnabled: map['pointInTimeRecoveryEnabled'] == null ? null : (map['pointInTimeRecoveryEnabled']! as bool).input(),
      replicationLogArchivingEnabled: map['replicationLogArchivingEnabled'] == null ? null : (map['replicationLogArchivingEnabled']! as bool).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      transactionLogRetentionDays: map['transactionLogRetentionDays'] == null ? null : (map['transactionLogRetentionDays']! as int).input(),
    );
  }
}

