// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSourceReferencesDataSourceReference {
  /// The state of the backup config for the data source.
  final pulumi.Input<String> backupConfigState;
  /// The number of backups for the data source.
  final pulumi.Input<int> backupCount;
  /// The underlying data source resource.
  final pulumi.Input<String> dataSource;
  /// The GCP resource name for the data source.
  final pulumi.Input<String> gcpResourceName;
  /// The state of the last backup.
  final pulumi.Input<String> lastBackupState;
  /// The last time a successful backup was made.
  final pulumi.Input<String> lastSuccessfulBackupTime;
  final pulumi.Input<String> name;
  /// The resource type to get the data source references for. Examples include, "sqladmin.googleapis.com/Instance" , "compute.googleapis.com/Instance". `resource_type` is deprecated and will be removed in a future major release.
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetDataSourceReferencesDataSourceReference].
  /// [backupConfigState] The state of the backup config for the data source.
  /// [backupCount] The number of backups for the data source.
  /// [dataSource] The underlying data source resource.
  /// [gcpResourceName] The GCP resource name for the data source.
  /// [lastBackupState] The state of the last backup.
  /// [lastSuccessfulBackupTime] The last time a successful backup was made.
  /// [name] Required.
  /// [resourceType] The resource type to get the data source references for. Examples include, "sqladmin.googleapis.com/Instance" , "compute.googleapis.com/Instance". `resource_type` is deprecated and will be removed in a future major release.
  GetDataSourceReferencesDataSourceReference({
    required this.backupConfigState,
    required this.backupCount,
    required this.dataSource,
    required this.gcpResourceName,
    required this.lastBackupState,
    required this.lastSuccessfulBackupTime,
    required this.name,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfigState': backupConfigState,
      'backupCount': backupCount,
      'dataSource': dataSource,
      'gcpResourceName': gcpResourceName,
      'lastBackupState': lastBackupState,
      'lastSuccessfulBackupTime': lastSuccessfulBackupTime,
      'name': name,
      'resourceType': resourceType,
    };
  }

  factory GetDataSourceReferencesDataSourceReference.fromMap(Map<String, dynamic> map) {
    return GetDataSourceReferencesDataSourceReference(
      backupConfigState: (map['backupConfigState'] as String).input(),
      backupCount: (map['backupCount'] as int).input(),
      dataSource: (map['dataSource'] as String).input(),
      gcpResourceName: (map['gcpResourceName'] as String).input(),
      lastBackupState: (map['lastBackupState'] as String).input(),
      lastSuccessfulBackupTime: (map['lastSuccessfulBackupTime'] as String).input(),
      name: (map['name'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

