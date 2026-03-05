// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAutonomousDatabaseBackup.
class GetAutonomousDatabaseBackupResult {
  final bool automatic;
  /// The backup OCID.
  final String autonomousDatabaseBackupOcid;
  final String autonomousDatabaseId;
  /// The OCID of the Autonomous Database OCID.
  final String autonomousDatabaseOcid;
  final double databaseBackupSizeInTbs;
  final String databaseVersion;
  /// The user-friendly name of the backup.
  final String displayName;
  /// The ID of the Autonomous Database Backup.
  final String id;
  /// Information about the current lifecycle state of the backup.
  final String lifecycleDetails;
  /// The current state of the backup.
  final String lifecycleState;
  /// `- The Azure Region where the Autonomous Database Backup exists.
  final String location;
  final String name;
  /// The current provisioning state of the Autonomous Database Backup.
  final String provisioningState;
  final bool restorable;
  /// The retention period in days for the Autonomous Database Backup.
  final int retentionPeriodInDays;
  /// The date and time the backup will become unusable.
  final String timeAvailableTil;
  /// The date and time the backup was completed.
  final String timeEnded;
  /// The date and time the backup started.
  final String timeStarted;
  final String type;

  /// Creates a new [GetAutonomousDatabaseBackupResult].
  /// [automatic] Required.
  /// [autonomousDatabaseBackupOcid] The backup OCID.
  /// [autonomousDatabaseId] Required.
  /// [autonomousDatabaseOcid] The OCID of the Autonomous Database OCID.
  /// [databaseBackupSizeInTbs] Required.
  /// [databaseVersion] Required.
  /// [displayName] The user-friendly name of the backup.
  /// [id] The ID of the Autonomous Database Backup.
  /// [lifecycleDetails] Information about the current lifecycle state of the backup.
  /// [lifecycleState] The current state of the backup.
  /// [location] `- The Azure Region where the Autonomous Database Backup exists.
  /// [name] Required.
  /// [provisioningState] The current provisioning state of the Autonomous Database Backup.
  /// [restorable] Required.
  /// [retentionPeriodInDays] The retention period in days for the Autonomous Database Backup.
  /// [timeAvailableTil] The date and time the backup will become unusable.
  /// [timeEnded] The date and time the backup was completed.
  /// [timeStarted] The date and time the backup started.
  /// [type] Required.
  GetAutonomousDatabaseBackupResult({
    required this.automatic,
    required this.autonomousDatabaseBackupOcid,
    required this.autonomousDatabaseId,
    required this.autonomousDatabaseOcid,
    required this.databaseBackupSizeInTbs,
    required this.databaseVersion,
    required this.displayName,
    required this.id,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.location,
    required this.name,
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
      'autonomousDatabaseId': autonomousDatabaseId,
      'autonomousDatabaseOcid': autonomousDatabaseOcid,
      'databaseBackupSizeInTbs': databaseBackupSizeInTbs,
      'databaseVersion': databaseVersion,
      'displayName': displayName,
      'id': id,
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'restorable': restorable,
      'retentionPeriodInDays': retentionPeriodInDays,
      'timeAvailableTil': timeAvailableTil,
      'timeEnded': timeEnded,
      'timeStarted': timeStarted,
      'type': type,
    };
  }

  factory GetAutonomousDatabaseBackupResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseBackupResult(
      automatic: map['automatic'] as bool,
      autonomousDatabaseBackupOcid: map['autonomousDatabaseBackupOcid'] as String,
      autonomousDatabaseId: map['autonomousDatabaseId'] as String,
      autonomousDatabaseOcid: map['autonomousDatabaseOcid'] as String,
      databaseBackupSizeInTbs: map['databaseBackupSizeInTbs'] as double,
      databaseVersion: map['databaseVersion'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      lifecycleDetails: map['lifecycleDetails'] as String,
      lifecycleState: map['lifecycleState'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      restorable: map['restorable'] as bool,
      retentionPeriodInDays: map['retentionPeriodInDays'] as int,
      timeAvailableTil: map['timeAvailableTil'] as String,
      timeEnded: map['timeEnded'] as String,
      timeStarted: map['timeStarted'] as String,
      type: map['type'] as String,
    );
  }
}

