// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_retention_settings_response.dart';

/// Database instance backup configuration.
class BackupConfigurationResponse {
  /// Backup retention settings.
  final pulumi.Input<BackupRetentionSettingsResponse> backupRetentionSettings;
  /// (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
  final pulumi.Input<bool> binaryLogEnabled;
  /// Whether this configuration is enabled.
  final pulumi.Input<bool> enabled;
  /// This is always `sql#backupConfiguration`.
  final pulumi.Input<String> kind;
  /// Location of the backup
  final pulumi.Input<String> location;
  /// Whether point in time recovery is enabled.
  final pulumi.Input<bool> pointInTimeRecoveryEnabled;
  /// Reserved for future use.
  final pulumi.Input<bool> replicationLogArchivingEnabled;
  /// Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`.
  final pulumi.Input<String> startTime;
  /// The number of days of transaction logs we retain for point in time restore, from 1-7.
  final pulumi.Input<int> transactionLogRetentionDays;

  /// Creates a new [BackupConfigurationResponse].
  /// [backupRetentionSettings] Backup retention settings.
  /// [binaryLogEnabled] (MySQL only) Whether binary log is enabled. If backup configuration is disabled, binarylog must be disabled as well.
  /// [enabled] Whether this configuration is enabled.
  /// [kind] This is always `sql#backupConfiguration`.
  /// [location] Location of the backup
  /// [pointInTimeRecoveryEnabled] Whether point in time recovery is enabled.
  /// [replicationLogArchivingEnabled] Reserved for future use.
  /// [startTime] Start time for the daily backup configuration in UTC timezone in the 24 hour format - `HH:MM`.
  /// [transactionLogRetentionDays] The number of days of transaction logs we retain for point in time restore, from 1-7.
  const BackupConfigurationResponse({
    required this.backupRetentionSettings,
    required this.binaryLogEnabled,
    required this.enabled,
    required this.kind,
    required this.location,
    required this.pointInTimeRecoveryEnabled,
    required this.replicationLogArchivingEnabled,
    required this.startTime,
    required this.transactionLogRetentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionSettings': pulumi.Input.mapInputValue<BackupRetentionSettingsResponse, Map<String, dynamic>>(backupRetentionSettings, (value) => value.toMap()),
      'binaryLogEnabled': binaryLogEnabled,
      'enabled': enabled,
      'kind': kind,
      'location': location,
      'pointInTimeRecoveryEnabled': pointInTimeRecoveryEnabled,
      'replicationLogArchivingEnabled': replicationLogArchivingEnabled,
      'startTime': startTime,
      'transactionLogRetentionDays': transactionLogRetentionDays,
    };
  }

  factory BackupConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BackupConfigurationResponse(
      backupRetentionSettings: pulumi.Input.fromValue(BackupRetentionSettingsResponse.fromMap((map['backupRetentionSettings']! as Map).cast<String, dynamic>())),
      binaryLogEnabled: pulumi.Input.fromValue(map['binaryLogEnabled'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      pointInTimeRecoveryEnabled: pulumi.Input.fromValue(map['pointInTimeRecoveryEnabled'] as bool),
      replicationLogArchivingEnabled: pulumi.Input.fromValue(map['replicationLogArchivingEnabled'] as bool),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      transactionLogRetentionDays: pulumi.Input.fromValue(map['transactionLogRetentionDays'] as int),
    );
  }
}
