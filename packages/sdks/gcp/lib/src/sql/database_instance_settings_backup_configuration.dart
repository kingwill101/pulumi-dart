// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_backup_configuration_backup_retention_settings.dart';

class DatabaseInstanceSettingsBackupConfiguration {
  /// Backup retention settings. The configuration is detailed below.
  final pulumi.Input<
    DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings
  >?
  backupRetentionSettings;

  /// The backup tier that manages the backups for the instance.
  final pulumi.Input<String>? backupTier;

  /// True if binary logging is enabled.
  /// Can only be used with MySQL.
  final pulumi.Input<bool>? binaryLogEnabled;

  /// True if backup configuration is enabled.
  final pulumi.Input<bool>? enabled;

  /// The region where the backup will be stored
  final pulumi.Input<String>? location;

  /// True if Point-in-time recovery is enabled. Will restart database if enabled after instance creation. Valid only for PostgreSQL and SQL Server instances. Enabled by default for PostgreSQL Enterprise Plus and SQL Server Enterprise Plus instances.
  final pulumi.Input<bool>? pointInTimeRecoveryEnabled;

  /// `HH:MM` format time indicating when backup
  /// configuration starts.
  final pulumi.Input<String>? startTime;

  /// The number of days of transaction logs we retain for point in time restore, from 1-7. For PostgreSQL Enterprise Plus and SQL Server Enterprise Plus instances, the number of days of retained transaction logs can be set from 1 to 35.
  final pulumi.Input<int>? transactionLogRetentionDays;

  /// Creates a new [DatabaseInstanceSettingsBackupConfiguration].
  /// [backupRetentionSettings] Backup retention settings. The configuration is detailed below.
  /// [backupTier] The backup tier that manages the backups for the instance.
  /// [binaryLogEnabled] True if binary logging is enabled.
  /// [enabled] True if backup configuration is enabled.
  /// [location] The region where the backup will be stored
  /// [pointInTimeRecoveryEnabled] True if Point-in-time recovery is enabled. Will restart database if enabled after instance creation. Valid only for PostgreSQL and SQL Server instances. Enabled by default for PostgreSQL Enterprise Plus and SQL Server Enterprise Plus instances.
  /// [startTime] `HH:MM` format time indicating when backup
  /// [transactionLogRetentionDays] The number of days of transaction logs we retain for point in time restore, from 1-7. For PostgreSQL Enterprise Plus and SQL Server Enterprise Plus instances, the number of days of retained transaction logs can be set from 1 to 35.
  DatabaseInstanceSettingsBackupConfiguration({
    this.backupRetentionSettings,
    this.backupTier,
    this.binaryLogEnabled,
    this.enabled,
    this.location,
    this.pointInTimeRecoveryEnabled,
    this.startTime,
    this.transactionLogRetentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings,
            Map<String, dynamic>
          >(backupRetentionSettings, (value) => value.toMap()),
      'backupTier': ?backupTier,
      'binaryLogEnabled': ?binaryLogEnabled,
      'enabled': ?enabled,
      'location': ?location,
      'pointInTimeRecoveryEnabled': ?pointInTimeRecoveryEnabled,
      'startTime': ?startTime,
      'transactionLogRetentionDays': ?transactionLogRetentionDays,
    };
  }

  factory DatabaseInstanceSettingsBackupConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceSettingsBackupConfiguration(
      backupRetentionSettings: (() {
        final guardedValue = map['backupRetentionSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      backupTier: (() {
        final guardedValue = map['backupTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      binaryLogEnabled: (() {
        final guardedValue = map['binaryLogEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pointInTimeRecoveryEnabled: (() {
        final guardedValue = map['pointInTimeRecoveryEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transactionLogRetentionDays: (() {
        final guardedValue = map['transactionLogRetentionDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
