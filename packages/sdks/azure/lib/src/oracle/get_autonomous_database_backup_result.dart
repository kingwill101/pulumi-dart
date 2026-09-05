// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAutonomousDatabaseBackup.
class GetAutonomousDatabaseBackupResult {
  final bool? automatic;
  /// The backup OCID.
  final String? autonomousDatabaseBackupOcid;
  final String? autonomousDatabaseId;
  /// The OCID of the Autonomous Database OCID.
  final String? autonomousDatabaseOcid;
  final double? databaseBackupSizeInTbs;
  final String? databaseVersion;
  /// The user-friendly name of the backup.
  final String? displayName;
  /// The ID of the Autonomous Database Backup.
  final String? id;
  /// Information about the current lifecycle state of the backup.
  final String? lifecycleDetails;
  /// The current state of the backup.
  final String? lifecycleState;
  /// `- The Azure Region where the Autonomous Database Backup exists.
  final String? location;
  final String? name;
  /// The current provisioning state of the Autonomous Database Backup.
  final String? provisioningState;
  final bool? restorable;
  /// The retention period in days for the Autonomous Database Backup.
  final int? retentionPeriodInDays;
  /// The date and time the backup will become unusable.
  final String? timeAvailableTil;
  /// The date and time the backup was completed.
  final String? timeEnded;
  /// The date and time the backup started.
  final String? timeStarted;
  final String? type;

  /// Creates a new [GetAutonomousDatabaseBackupResult].
  /// [automatic] Optional.
  /// [autonomousDatabaseBackupOcid] The backup OCID.
  /// [autonomousDatabaseId] Optional.
  /// [autonomousDatabaseOcid] The OCID of the Autonomous Database OCID.
  /// [databaseBackupSizeInTbs] Optional.
  /// [databaseVersion] Optional.
  /// [displayName] The user-friendly name of the backup.
  /// [id] The ID of the Autonomous Database Backup.
  /// [lifecycleDetails] Information about the current lifecycle state of the backup.
  /// [lifecycleState] The current state of the backup.
  /// [location] `- The Azure Region where the Autonomous Database Backup exists.
  /// [name] Optional.
  /// [provisioningState] The current provisioning state of the Autonomous Database Backup.
  /// [restorable] Optional.
  /// [retentionPeriodInDays] The retention period in days for the Autonomous Database Backup.
  /// [timeAvailableTil] The date and time the backup will become unusable.
  /// [timeEnded] The date and time the backup was completed.
  /// [timeStarted] The date and time the backup started.
  /// [type] Optional.
  const GetAutonomousDatabaseBackupResult({
    this.automatic,
    this.autonomousDatabaseBackupOcid,
    this.autonomousDatabaseId,
    this.autonomousDatabaseOcid,
    this.databaseBackupSizeInTbs,
    this.databaseVersion,
    this.displayName,
    this.id,
    this.lifecycleDetails,
    this.lifecycleState,
    this.location,
    this.name,
    this.provisioningState,
    this.restorable,
    this.retentionPeriodInDays,
    this.timeAvailableTil,
    this.timeEnded,
    this.timeStarted,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatic': ?automatic,
      'autonomousDatabaseBackupOcid': ?autonomousDatabaseBackupOcid,
      'autonomousDatabaseId': ?autonomousDatabaseId,
      'autonomousDatabaseOcid': ?autonomousDatabaseOcid,
      'databaseBackupSizeInTbs': ?databaseBackupSizeInTbs,
      'databaseVersion': ?databaseVersion,
      'displayName': ?displayName,
      'id': ?id,
      'lifecycleDetails': ?lifecycleDetails,
      'lifecycleState': ?lifecycleState,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'restorable': ?restorable,
      'retentionPeriodInDays': ?retentionPeriodInDays,
      'timeAvailableTil': ?timeAvailableTil,
      'timeEnded': ?timeEnded,
      'timeStarted': ?timeStarted,
      'type': ?type,
    };
  }

  factory GetAutonomousDatabaseBackupResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseBackupResult(
      automatic: (() { final guardedValue = map['automatic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autonomousDatabaseBackupOcid: (() { final guardedValue = map['autonomousDatabaseBackupOcid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autonomousDatabaseId: (() { final guardedValue = map['autonomousDatabaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autonomousDatabaseOcid: (() { final guardedValue = map['autonomousDatabaseOcid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseBackupSizeInTbs: (() { final guardedValue = map['databaseBackupSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      databaseVersion: (() { final guardedValue = map['databaseVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleDetails: (() { final guardedValue = map['lifecycleDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restorable: (() { final guardedValue = map['restorable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      retentionPeriodInDays: (() { final guardedValue = map['retentionPeriodInDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      timeAvailableTil: (() { final guardedValue = map['timeAvailableTil']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeEnded: (() { final guardedValue = map['timeEnded']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeStarted: (() { final guardedValue = map['timeStarted']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
