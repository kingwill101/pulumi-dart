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

  factory GetAutonomousDatabaseBackupsAutonomousDatabaseBackup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAutonomousDatabaseBackupsAutonomousDatabaseBackup(
      automatic: pulumi.Input.fromValue(map['automatic'] as bool),
      autonomousDatabaseBackupOcid: pulumi.Input.fromValue(
        map['autonomousDatabaseBackupOcid'] as String,
      ),
      autonomousDatabaseOcid: pulumi.Input.fromValue(
        map['autonomousDatabaseOcid'] as String,
      ),
      databaseBackupSizeInTbs: pulumi.Input.fromValue(
        map['databaseBackupSizeInTbs'] as double,
      ),
      databaseVersion: pulumi.Input.fromValue(map['databaseVersion'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lifecycleDetails: pulumi.Input.fromValue(
        map['lifecycleDetails'] as String,
      ),
      lifecycleState: pulumi.Input.fromValue(map['lifecycleState'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      restorable: pulumi.Input.fromValue(map['restorable'] as bool),
      retentionPeriodInDays: pulumi.Input.fromValue(
        map['retentionPeriodInDays'] as int,
      ),
      timeAvailableTil: pulumi.Input.fromValue(
        map['timeAvailableTil'] as String,
      ),
      timeEnded: pulumi.Input.fromValue(map['timeEnded'] as String),
      timeStarted: pulumi.Input.fromValue(map['timeStarted'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
