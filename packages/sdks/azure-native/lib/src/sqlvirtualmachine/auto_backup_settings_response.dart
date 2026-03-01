// ignore_for_file: unused_element, unnecessary_cast


/// Configure backups for databases in your SQL virtual machine.
class AutoBackupSettingsResponse {
  /// Backup schedule type.
  final String? backupScheduleType;
  /// Include or exclude system databases from auto backup.
  final bool? backupSystemDbs;
  /// Days of the week for the backups when FullBackupFrequency is set to Weekly.
  final List<String>? daysOfWeek;
  /// Enable or disable autobackup on SQL virtual machine.
  final bool? enable;
  /// Enable or disable encryption for backup on SQL virtual machine.
  final bool? enableEncryption;
  /// Frequency of full backups. In both cases, full backups begin during the next scheduled time window.
  final String? fullBackupFrequency;
  /// Start time of a given day during which full backups can take place. 0-23 hours.
  final int? fullBackupStartTime;
  /// Duration of the time window of a given day during which full backups can take place. 1-23 hours.
  final int? fullBackupWindowHours;
  /// Frequency of log backups. 5-60 minutes.
  final int? logBackupFrequency;
  /// Retention period of backup: 1-90 days.
  final int? retentionPeriod;
  /// Storage account url where backup will be taken to.
  final String? storageAccountUrl;
  /// Storage container name where backup will be taken to.
  final String? storageContainerName;

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
      backupScheduleType: map['backupScheduleType'] == null ? null : map['backupScheduleType'] as String,
      backupSystemDbs: map['backupSystemDbs'] == null ? null : map['backupSystemDbs'] as bool,
      daysOfWeek: map['daysOfWeek'] == null ? null : (map['daysOfWeek'] as List).cast<String>(),
      enable: map['enable'] == null ? null : map['enable'] as bool,
      enableEncryption: map['enableEncryption'] == null ? null : map['enableEncryption'] as bool,
      fullBackupFrequency: map['fullBackupFrequency'] == null ? null : map['fullBackupFrequency'] as String,
      fullBackupStartTime: map['fullBackupStartTime'] == null ? null : map['fullBackupStartTime'] as int,
      fullBackupWindowHours: map['fullBackupWindowHours'] == null ? null : map['fullBackupWindowHours'] as int,
      logBackupFrequency: map['logBackupFrequency'] == null ? null : map['logBackupFrequency'] as int,
      retentionPeriod: map['retentionPeriod'] == null ? null : map['retentionPeriod'] as int,
      storageAccountUrl: map['storageAccountUrl'] == null ? null : map['storageAccountUrl'] as String,
      storageContainerName: map['storageContainerName'] == null ? null : map['storageContainerName'] as String,
    );
  }
}

