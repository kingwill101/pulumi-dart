// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataSourceReference.
class GetDataSourceReferenceResult {
  final String? backupConfigState;
  final int? backupCount;
  final String? dataSource;
  final String? dataSourceReferenceId;
  final String? gcpResourceName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? lastBackupState;
  final String? lastSuccessfulBackupTime;
  final String? location;
  final String? name;
  final String? project;
  final String? resourceType;

  /// Creates a new [GetDataSourceReferenceResult].
  /// [backupConfigState] Optional.
  /// [backupCount] Optional.
  /// [dataSource] Optional.
  /// [dataSourceReferenceId] Optional.
  /// [gcpResourceName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastBackupState] Optional.
  /// [lastSuccessfulBackupTime] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [resourceType] Optional.
  const GetDataSourceReferenceResult({
    this.backupConfigState,
    this.backupCount,
    this.dataSource,
    this.dataSourceReferenceId,
    this.gcpResourceName,
    this.id,
    this.lastBackupState,
    this.lastSuccessfulBackupTime,
    this.location,
    this.name,
    this.project,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfigState': ?backupConfigState,
      'backupCount': ?backupCount,
      'dataSource': ?dataSource,
      'dataSourceReferenceId': ?dataSourceReferenceId,
      'gcpResourceName': ?gcpResourceName,
      'id': ?id,
      'lastBackupState': ?lastBackupState,
      'lastSuccessfulBackupTime': ?lastSuccessfulBackupTime,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'resourceType': ?resourceType,
    };
  }

  factory GetDataSourceReferenceResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferenceResult(
      backupConfigState: (() { final guardedValue = map['backupConfigState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupCount: (() { final guardedValue = map['backupCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSourceReferenceId: (() { final guardedValue = map['dataSourceReferenceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gcpResourceName: (() { final guardedValue = map['gcpResourceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastBackupState: (() { final guardedValue = map['lastBackupState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSuccessfulBackupTime: (() { final guardedValue = map['lastSuccessfulBackupTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
