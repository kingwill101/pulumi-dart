// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configure backups for databases in your SQL virtual machine.
class AutoBackupSettings {
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
  /// Password for encryption on backup.
  final pulumi.Input<String>? password;
  /// Retention period of backup: 1-90 days.
  final pulumi.Input<int>? retentionPeriod;
  /// Storage account key where backup will be taken to.
  final pulumi.Input<String>? storageAccessKey;
  /// Storage account url where backup will be taken to.
  final pulumi.Input<String>? storageAccountUrl;
  /// Storage container name where backup will be taken to.
  final pulumi.Input<String>? storageContainerName;

  /// Creates a new [AutoBackupSettings].
  /// [backupScheduleType] Backup schedule type.
  /// [backupSystemDbs] Include or exclude system databases from auto backup.
  /// [daysOfWeek] Days of the week for the backups when FullBackupFrequency is set to Weekly.
  /// [enable] Enable or disable autobackup on SQL virtual machine.
  /// [enableEncryption] Enable or disable encryption for backup on SQL virtual machine.
  /// [fullBackupFrequency] Frequency of full backups. In both cases, full backups begin during the next scheduled time window.
  /// [fullBackupStartTime] Start time of a given day during which full backups can take place. 0-23 hours.
  /// [fullBackupWindowHours] Duration of the time window of a given day during which full backups can take place. 1-23 hours.
  /// [logBackupFrequency] Frequency of log backups. 5-60 minutes.
  /// [password] Password for encryption on backup.
  /// [retentionPeriod] Retention period of backup: 1-90 days.
  /// [storageAccessKey] Storage account key where backup will be taken to.
  /// [storageAccountUrl] Storage account url where backup will be taken to.
  /// [storageContainerName] Storage container name where backup will be taken to.
  AutoBackupSettings({
    this.backupScheduleType,
    this.backupSystemDbs,
    this.daysOfWeek,
    this.enable,
    this.enableEncryption,
    this.fullBackupFrequency,
    this.fullBackupStartTime,
    this.fullBackupWindowHours,
    this.logBackupFrequency,
    this.password,
    this.retentionPeriod,
    this.storageAccessKey,
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
      'password': ?password,
      'retentionPeriod': ?retentionPeriod,
      'storageAccessKey': ?storageAccessKey,
      'storageAccountUrl': ?storageAccountUrl,
      'storageContainerName': ?storageContainerName,
    };
  }

  factory AutoBackupSettings.fromMap(Map<String, dynamic> map) {
    return AutoBackupSettings(
      backupScheduleType: map['backupScheduleType'] == null ? null : (map['backupScheduleType'] as String).input(),
      backupSystemDbs: map['backupSystemDbs'] == null ? null : (map['backupSystemDbs'] as bool).input(),
      daysOfWeek: map['daysOfWeek'] == null ? null : ((map['daysOfWeek'] as List).cast<String>()).input(),
      enable: map['enable'] == null ? null : (map['enable'] as bool).input(),
      enableEncryption: map['enableEncryption'] == null ? null : (map['enableEncryption'] as bool).input(),
      fullBackupFrequency: map['fullBackupFrequency'] == null ? null : (map['fullBackupFrequency'] as String).input(),
      fullBackupStartTime: map['fullBackupStartTime'] == null ? null : (map['fullBackupStartTime'] as int).input(),
      fullBackupWindowHours: map['fullBackupWindowHours'] == null ? null : (map['fullBackupWindowHours'] as int).input(),
      logBackupFrequency: map['logBackupFrequency'] == null ? null : (map['logBackupFrequency'] as int).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod'] as int).input(),
      storageAccessKey: map['storageAccessKey'] == null ? null : (map['storageAccessKey'] as String).input(),
      storageAccountUrl: map['storageAccountUrl'] == null ? null : (map['storageAccountUrl'] as String).input(),
      storageContainerName: map['storageContainerName'] == null ? null : (map['storageContainerName'] as String).input(),
    );
  }
}

