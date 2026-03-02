// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabaseBackupsAutonomousDatabaseBackup {
  /// Indicates whether the backup is user-initiated or automatic.
  final pulumi.Input<bool> automatic;
  /// The backup OCID.
  final pulumi.Input<String> autonomousDatabaseBackupOcid;
  /// The OCID of the Autonomous Database OCID.
  final pulumi.Input<String> autonomousDatabaseOcid;
  final pulumi.Input<double> databaseBackupSizeInTbs;
  /// The Oracle Database version of the Autonomous Database at the time the backup was taken.
  final pulumi.Input<String> databaseVersion;
  /// The user-friendly name of the backup.
  final pulumi.Input<String> displayName;
  /// The ID of the Autonomous Database Backup.
  final pulumi.Input<String> id;
  /// Information about the current lifecycle state of the backup.
  final pulumi.Input<String> lifecycleDetails;
  /// The current state of the backup.
  final pulumi.Input<String> lifecycleState;
  /// `- The Azure Region where the Autonomous Database Backup exists.
  final pulumi.Input<String> location;
  /// The current provisioning state of the Autonomous Database Backup.
  final pulumi.Input<String> provisioningState;
  /// Indicates whether the backup can be used to restore the Autonomous Database.
  final pulumi.Input<bool> restorable;
  /// The retention period in days for the Autonomous Database Backup.
  final pulumi.Input<int> retentionPeriodInDays;
  /// The date and time the backup will become unusable.
  final pulumi.Input<String> timeAvailableTil;
  /// The date and time the backup was completed.
  final pulumi.Input<String> timeEnded;
  /// The date and time the backup started.
  final pulumi.Input<String> timeStarted;
  /// The type of backup.
  final pulumi.Input<String> type;

  /// Creates a new [GetAutonomousDatabaseBackupsAutonomousDatabaseBackup].
  /// [automatic] Indicates whether the backup is user-initiated or automatic.
  /// [autonomousDatabaseBackupOcid] The backup OCID.
  /// [autonomousDatabaseOcid] The OCID of the Autonomous Database OCID.
  /// [databaseBackupSizeInTbs] Required.
  /// [databaseVersion] The Oracle Database version of the Autonomous Database at the time the backup was taken.
  /// [displayName] The user-friendly name of the backup.
  /// [id] The ID of the Autonomous Database Backup.
  /// [lifecycleDetails] Information about the current lifecycle state of the backup.
  /// [lifecycleState] The current state of the backup.
  /// [location] `- The Azure Region where the Autonomous Database Backup exists.
  /// [provisioningState] The current provisioning state of the Autonomous Database Backup.
  /// [restorable] Indicates whether the backup can be used to restore the Autonomous Database.
  /// [retentionPeriodInDays] The retention period in days for the Autonomous Database Backup.
  /// [timeAvailableTil] The date and time the backup will become unusable.
  /// [timeEnded] The date and time the backup was completed.
  /// [timeStarted] The date and time the backup started.
  /// [type] The type of backup.
  GetAutonomousDatabaseBackupsAutonomousDatabaseBackup({
    required this.automatic,
    required this.autonomousDatabaseBackupOcid,
    required this.autonomousDatabaseOcid,
    required this.databaseBackupSizeInTbs,
    required this.databaseVersion,
    required this.displayName,
    required this.id,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.location,
    required this.provisioningState,
    required this.restorable,
    required this.retentionPeriodInDays,
    required this.timeAvailableTil,
    required this.timeEnded,
    required this.timeStarted,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': automatic,
      'autonomousDatabaseBackupOcid': autonomousDatabaseBackupOcid,
      'autonomousDatabaseOcid': autonomousDatabaseOcid,
      'databaseBackupSizeInTbs': databaseBackupSizeInTbs,
      'databaseVersion': databaseVersion,
      'displayName': displayName,
      'id': id,
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'location': location,
      'provisioningState': provisioningState,
      'restorable': restorable,
      'retentionPeriodInDays': retentionPeriodInDays,
      'timeAvailableTil': timeAvailableTil,
      'timeEnded': timeEnded,
      'timeStarted': timeStarted,
      'type': type,
    };
  }

  factory GetAutonomousDatabaseBackupsAutonomousDatabaseBackup.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseBackupsAutonomousDatabaseBackup(
      automatic: (map['automatic'] as bool).input(),
      autonomousDatabaseBackupOcid: (map['autonomousDatabaseBackupOcid'] as String).input(),
      autonomousDatabaseOcid: (map['autonomousDatabaseOcid'] as String).input(),
      databaseBackupSizeInTbs: (map['databaseBackupSizeInTbs'] as double).input(),
      databaseVersion: (map['databaseVersion'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      id: (map['id'] as String).input(),
      lifecycleDetails: (map['lifecycleDetails'] as String).input(),
      lifecycleState: (map['lifecycleState'] as String).input(),
      location: (map['location'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      restorable: (map['restorable'] as bool).input(),
      retentionPeriodInDays: (map['retentionPeriodInDays'] as int).input(),
      timeAvailableTil: (map['timeAvailableTil'] as String).input(),
      timeEnded: (map['timeEnded'] as String).input(),
      timeStarted: (map['timeStarted'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

