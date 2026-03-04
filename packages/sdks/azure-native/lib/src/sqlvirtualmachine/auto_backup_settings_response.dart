// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configure backups for databases in your SQL virtual machine.
class AutoBackupSettingsResponse {
  /// Backup schedule type.
  final pulumi.Input<String>? backupScheduleType;

  /// Include or exclude system databases from auto backup.
  final pulumi.Input<bool>? backupSystemDbs;

  /// Days of the week for the backups when FullBackupFrequency is set to Weekly.
  final pulumi.Input<List<String>>? daysOfWeek;

  /// Enable or disable autobackup on SQL virtual machine.
  final pulumi.Input<bool>? enable;

  /// Enable or disable encryption for backup on SQL virtual machine.
  final pulumi.Input<bool>? enableEncryption;

  /// Frequency of full backups. In both cases, full backups begin during the next scheduled time window.
  final pulumi.Input<String>? fullBackupFrequency;

  /// Start time of a given day during which full backups can take place. 0-23 hours.
  final pulumi.Input<int>? fullBackupStartTime;

  /// Duration of the time window of a given day during which full backups can take place. 1-23 hours.
  final pulumi.Input<int>? fullBackupWindowHours;

  /// Frequency of log backups. 5-60 minutes.
  final pulumi.Input<int>? logBackupFrequency;

  /// Retention period of backup: 1-90 days.
  final pulumi.Input<int>? retentionPeriod;

  /// Storage account url where backup will be taken to.
  final pulumi.Input<String>? storageAccountUrl;

  /// Storage container name where backup will be taken to.
  final pulumi.Input<String>? storageContainerName;

  /// Creates a new [AutoBackupSettingsResponse].
  /// [backupScheduleType] Backup schedule type.
  /// [backupSystemDbs] Include or exclude system databases from auto backup.
  /// [daysOfWeek] Days of the week for the backups when FullBackupFrequency is set to Weekly.
  /// [enable] Enable or disable autobackup on SQL virtual machine.
  /// [enableEncryption] Enable or disable encryption for backup on SQL virtual machine.
  /// [fullBackupFrequency] Frequency of full backups. In both cases, full backups begin during the next scheduled time window.
  /// [fullBackupStartTime] Start time of a given day during which full backups can take place. 0-23 hours.
  /// [fullBackupWindowHours] Duration of the time window of a given day during which full backups can take place. 1-23 hours.
  /// [logBackupFrequency] Frequency of log backups. 5-60 minutes.
  /// [retentionPeriod] Retention period of backup: 1-90 days.
  /// [storageAccountUrl] Storage account url where backup will be taken to.
  /// [storageContainerName] Storage container name where backup will be taken to.
  AutoBackupSettingsResponse({
    this.backupScheduleType,
    this.backupSystemDbs,
    this.daysOfWeek,
    this.enable,
    this.enableEncryption,
    this.fullBackupFrequency,
    this.fullBackupStartTime,
    this.fullBackupWindowHours,
    this.logBackupFrequency,
    this.retentionPeriod,
    this.storageAccountUrl,
    this.storageContainerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupScheduleType': ?backupScheduleType,
      'backupSystemDbs': ?backupSystemDbs,
      'daysOfWeek': ?daysOfWeek,
      'enable': ?enable,
      'enableEncryption': ?enableEncryption,
      'fullBackupFrequency': ?fullBackupFrequency,
      'fullBackupStartTime': ?fullBackupStartTime,
      'fullBackupWindowHours': ?fullBackupWindowHours,
      'logBackupFrequency': ?logBackupFrequency,
      'retentionPeriod': ?retentionPeriod,
      'storageAccountUrl': ?storageAccountUrl,
      'storageContainerName': ?storageContainerName,
    };
  }

  factory AutoBackupSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AutoBackupSettingsResponse(
      backupScheduleType: (() {
        final guardedValue = map['backupScheduleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupSystemDbs: (() {
        final guardedValue = map['backupSystemDbs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      daysOfWeek: (() {
        final guardedValue = map['daysOfWeek'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableEncryption: (() {
        final guardedValue = map['enableEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fullBackupFrequency: (() {
        final guardedValue = map['fullBackupFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fullBackupStartTime: (() {
        final guardedValue = map['fullBackupStartTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fullBackupWindowHours: (() {
        final guardedValue = map['fullBackupWindowHours'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      logBackupFrequency: (() {
        final guardedValue = map['logBackupFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      retentionPeriod: (() {
        final guardedValue = map['retentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      storageAccountUrl: (() {
        final guardedValue = map['storageAccountUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageContainerName: (() {
        final guardedValue = map['storageContainerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
