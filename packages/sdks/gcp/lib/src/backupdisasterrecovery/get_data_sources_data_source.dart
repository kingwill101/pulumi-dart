// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_sources_data_source_backup_config_info.dart';
import 'get_data_sources_data_source_data_source_backup_appliance_application.dart';
import 'get_data_sources_data_source_data_source_gcp_resource.dart';

class GetDataSourcesDataSource {
  /// This field is set to true if the backup is blocked by vault access restriction.
  final pulumi.Input<bool> backupBlockedByVaultAccessRestriction;
  /// An object containing information about the backup configuration.
  final pulumi.Input<List<GetDataSourcesDataSourceBackupConfigInfo>> backupConfigInfos;
  /// Number of backups in the data source.
  final pulumi.Input<String> backupCount;
  /// The configuration state of the DataSource.
  final pulumi.Input<String> configState;
  /// Timestamp of when the DataSource was created.
  final pulumi.Input<String> createTime;
  /// The backed up resource is a backup appliance application.
  final pulumi.Input<List<GetDataSourcesDataSourceDataSourceBackupApplianceApplication>> dataSourceBackupApplianceApplications;
  /// An object containing details about the underlying GCP resource being backed up.
  final pulumi.Input<List<GetDataSourcesDataSourceDataSourceGcpResource>> dataSourceGcpResources;
  /// Server specified ETag for the ManagementServer resource to prevent simultaneous updates from overwiting each other.
  final pulumi.Input<String> etag;
  /// Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>> labels;
  /// The full resource name of the DataSource, in the format projects/{project}/locations/{location}/backupVaults/{backupVaultId}/dataSources/{dataSourceId}.
  final pulumi.Input<String> name;
  /// The current state of the DataSource (e.g., ACTIVE, CREATING, DELETING).
  final pulumi.Input<String> state;
  /// The number of bytes (metadata and data) stored in this datasource.
  final pulumi.Input<String> totalStoredBytes;
  /// Timestamp of when the DataSource was last updated.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetDataSourcesDataSource].
  /// [backupBlockedByVaultAccessRestriction] This field is set to true if the backup is blocked by vault access restriction.
  /// [backupConfigInfos] An object containing information about the backup configuration.
  /// [backupCount] Number of backups in the data source.
  /// [configState] The configuration state of the DataSource.
  /// [createTime] Timestamp of when the DataSource was created.
  /// [dataSourceBackupApplianceApplications] The backed up resource is a backup appliance application.
  /// [dataSourceGcpResources] An object containing details about the underlying GCP resource being backed up.
  /// [etag] Server specified ETag for the ManagementServer resource to prevent simultaneous updates from overwiting each other.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] The full resource name of the DataSource, in the format projects/{project}/locations/{location}/backupVaults/{backupVaultId}/dataSources/{dataSourceId}.
  /// [state] The current state of the DataSource (e.g., ACTIVE, CREATING, DELETING).
  /// [totalStoredBytes] The number of bytes (metadata and data) stored in this datasource.
  /// [updateTime] Timestamp of when the DataSource was last updated.
  const GetDataSourcesDataSource({
    required this.backupBlockedByVaultAccessRestriction,
    required this.backupConfigInfos,
    required this.backupCount,
    required this.configState,
    required this.createTime,
    required this.dataSourceBackupApplianceApplications,
    required this.dataSourceGcpResources,
    required this.etag,
    required this.labels,
    required this.name,
    required this.state,
    required this.totalStoredBytes,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupBlockedByVaultAccessRestriction': backupBlockedByVaultAccessRestriction,
      'backupConfigInfos': pulumi.Input.mapInputValue<List<GetDataSourcesDataSourceBackupConfigInfo>, List<Map<String, dynamic>>>(backupConfigInfos, (value) => pulumi.Input.encodeList<GetDataSourcesDataSourceBackupConfigInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backupCount': backupCount,
      'configState': configState,
      'createTime': createTime,
      'dataSourceBackupApplianceApplications': pulumi.Input.mapInputValue<List<GetDataSourcesDataSourceDataSourceBackupApplianceApplication>, List<Map<String, dynamic>>>(dataSourceBackupApplianceApplications, (value) => pulumi.Input.encodeList<GetDataSourcesDataSourceDataSourceBackupApplianceApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSourceGcpResources': pulumi.Input.mapInputValue<List<GetDataSourcesDataSourceDataSourceGcpResource>, List<Map<String, dynamic>>>(dataSourceGcpResources, (value) => pulumi.Input.encodeList<GetDataSourcesDataSourceDataSourceGcpResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'labels': labels,
      'name': name,
      'state': state,
      'totalStoredBytes': totalStoredBytes,
      'updateTime': updateTime,
    };
  }

  factory GetDataSourcesDataSource.fromMap(Map<String, dynamic> map) {
    return GetDataSourcesDataSource(
      backupBlockedByVaultAccessRestriction: pulumi.Input.fromValue(map['backupBlockedByVaultAccessRestriction'] as bool),
      backupConfigInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSourcesDataSourceBackupConfigInfo>(map['backupConfigInfos']!, (value) => GetDataSourcesDataSourceBackupConfigInfo.fromMap((value as Map).cast<String, dynamic>()))),
      backupCount: pulumi.Input.fromValue(map['backupCount'] as String),
      configState: pulumi.Input.fromValue(map['configState'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dataSourceBackupApplianceApplications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSourcesDataSourceDataSourceBackupApplianceApplication>(map['dataSourceBackupApplianceApplications']!, (value) => GetDataSourcesDataSourceDataSourceBackupApplianceApplication.fromMap((value as Map).cast<String, dynamic>()))),
      dataSourceGcpResources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSourcesDataSourceDataSourceGcpResource>(map['dataSourceGcpResources']!, (value) => GetDataSourcesDataSourceDataSourceGcpResource.fromMap((value as Map).cast<String, dynamic>()))),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      totalStoredBytes: pulumi.Input.fromValue(map['totalStoredBytes'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
