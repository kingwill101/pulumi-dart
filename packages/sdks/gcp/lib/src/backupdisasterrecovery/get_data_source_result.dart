// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_source_backup_config_info.dart';
import 'get_data_source_data_source_backup_appliance_application.dart';
import 'get_data_source_data_source_gcp_resource.dart';

/// Result data returned by getDataSource.
class GetDataSourceResult {
  final bool? backupBlockedByVaultAccessRestriction;
  final List<GetDataSourceBackupConfigInfo>? backupConfigInfos;
  final String? backupCount;
  final String? backupVaultId;
  final String? configState;
  final String? createTime;
  final List<GetDataSourceDataSourceBackupApplianceApplication>? dataSourceBackupApplianceApplications;
  final List<GetDataSourceDataSourceGcpResource>? dataSourceGcpResources;
  final String? dataSourceId;
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? project;
  final String? state;
  final String? totalStoredBytes;
  final String? updateTime;

  /// Creates a new [GetDataSourceResult].
  /// [backupBlockedByVaultAccessRestriction] Optional.
  /// [backupConfigInfos] Optional.
  /// [backupCount] Optional.
  /// [backupVaultId] Optional.
  /// [configState] Optional.
  /// [createTime] Optional.
  /// [dataSourceBackupApplianceApplications] Optional.
  /// [dataSourceGcpResources] Optional.
  /// [dataSourceId] Optional.
  /// [etag] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [state] Optional.
  /// [totalStoredBytes] Optional.
  /// [updateTime] Optional.
  const GetDataSourceResult({
    this.backupBlockedByVaultAccessRestriction,
    this.backupConfigInfos,
    this.backupCount,
    this.backupVaultId,
    this.configState,
    this.createTime,
    this.dataSourceBackupApplianceApplications,
    this.dataSourceGcpResources,
    this.dataSourceId,
    this.etag,
    this.id,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.state,
    this.totalStoredBytes,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupBlockedByVaultAccessRestriction': ?backupBlockedByVaultAccessRestriction,
      'backupConfigInfos': ?(() { final guardedValue = backupConfigInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSourceBackupConfigInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backupCount': ?backupCount,
      'backupVaultId': ?backupVaultId,
      'configState': ?configState,
      'createTime': ?createTime,
      'dataSourceBackupApplianceApplications': ?(() { final guardedValue = dataSourceBackupApplianceApplications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSourceDataSourceBackupApplianceApplication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataSourceGcpResources': ?(() { final guardedValue = dataSourceGcpResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataSourceDataSourceGcpResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataSourceId': ?dataSourceId,
      'etag': ?etag,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'state': ?state,
      'totalStoredBytes': ?totalStoredBytes,
      'updateTime': ?updateTime,
    };
  }

  factory GetDataSourceResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourceResult(
      backupBlockedByVaultAccessRestriction: (() { final guardedValue = map['backupBlockedByVaultAccessRestriction']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      backupConfigInfos: (() { final guardedValue = map['backupConfigInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSourceBackupConfigInfo>(guardedValue, (value) => GetDataSourceBackupConfigInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      backupCount: (() { final guardedValue = map['backupCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupVaultId: (() { final guardedValue = map['backupVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configState: (() { final guardedValue = map['configState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataSourceBackupApplianceApplications: (() { final guardedValue = map['dataSourceBackupApplianceApplications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSourceDataSourceBackupApplianceApplication>(guardedValue, (value) => GetDataSourceDataSourceBackupApplianceApplication.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataSourceGcpResources: (() { final guardedValue = map['dataSourceGcpResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataSourceDataSourceGcpResource>(guardedValue, (value) => GetDataSourceDataSourceGcpResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataSourceId: (() { final guardedValue = map['dataSourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalStoredBytes: (() { final guardedValue = map['totalStoredBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
