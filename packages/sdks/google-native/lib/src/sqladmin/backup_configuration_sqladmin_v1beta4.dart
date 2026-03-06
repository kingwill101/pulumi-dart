// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_retention_settings_sqladmin_v1beta4.dart';

/// Database instance backup configuration.
class BackupConfigurationSqladminV1beta4 {
  /// Backup retention settings.
  final pulumi.Input<BackupRetentionSettingsSqladminV1beta4>? backupRetentionSettings;
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

  /// Creates a new [BackupConfigurationSqladminV1beta4].
  /// [backupRetentionSettings] Backup retention settings.
  /// [binaryLogEnabled] (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
  /// [enabled] Whether this configuration is enabled.
  /// [kind] This is always `sql#backupConfiguration`.
  /// [location] Location of the backup
  /// [pointInTimeRecoveryEnabled] Whether point in time recovery is enabled.
  /// [replicationLogArchivingEnabled] Reserved for future use.
  /// [startTime] Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`.
  /// [transactionLogRetentionDays] The number of days of transaction logs we retain for point in time restore, from 1-7.
  const BackupConfigurationSqladminV1beta4({
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
      'backupRetentionSettings': ?pulumi.Input.mapOptionalInputValue<BackupRetentionSettingsSqladminV1beta4, Map<String, dynamic>>(backupRetentionSettings, (value) => value.toMap()),
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

  factory BackupConfigurationSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return BackupConfigurationSqladminV1beta4(
      backupRetentionSettings: (() { final guardedValue = map['backupRetentionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupRetentionSettingsSqladminV1beta4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      binaryLogEnabled: (() { final guardedValue = map['binaryLogEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pointInTimeRecoveryEnabled: (() { final guardedValue = map['pointInTimeRecoveryEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      replicationLogArchivingEnabled: (() { final guardedValue = map['replicationLogArchivingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transactionLogRetentionDays: (() { final guardedValue = map['transactionLogRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

