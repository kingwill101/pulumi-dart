// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_vm_workload_protected_item_extended_info_response.dart';
import 'distributed_nodes_info_response.dart';
import 'error_detail_response.dart';
import 'kpiresource_health_details_response.dart';

/// Azure VM workload-specific protected item representing SAP HANA Database.
class AzureVmWorkloadSAPHanaDatabaseProtectedItemResponse {
  /// Type of backup management for the backed up item.
  final pulumi.Input<String> backupManagementType;
  /// Name of the backup set the backup item belongs to
  final pulumi.Input<String?>? backupSetName;
  /// Unique name of container
  final pulumi.Input<String?>? containerName;
  /// Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  final pulumi.Input<String?>? createMode;
  /// Time for deferred deletion in UTC
  final pulumi.Input<String?>? deferredDeleteTimeInUTC;
  /// Time remaining before the DS marked for deferred delete is permanently deleted
  final pulumi.Input<String?>? deferredDeleteTimeRemaining;
  /// Additional information for this backup item.
  final pulumi.Input<AzureVmWorkloadProtectedItemExtendedInfoResponse?>? extendedInfo;
  /// Friendly name of the DB represented by this backup item.
  final pulumi.Input<String> friendlyName;
  /// Flag to identify whether datasource is protected in archive
  final pulumi.Input<bool?>? isArchiveEnabled;
  /// Flag to identify whether the deferred deleted DS is to be purged soon
  final pulumi.Input<bool?>? isDeferredDeleteScheduleUpcoming;
  /// Flag to identify that deferred deleted DS is to be moved into Pause state
  final pulumi.Input<bool?>? isRehydrate;
  /// Flag to identify whether the DS is scheduled for deferred delete
  final pulumi.Input<bool?>? isScheduledForDeferredDelete;
  /// Health details of different KPIs
  final pulumi.Input<Map<String, KPIResourceHealthDetailsResponse>?>? kpisHealths;
  /// Error details in last backup
  final pulumi.Input<ErrorDetailResponse?>? lastBackupErrorDetail;
  /// Last backup operation status. Possible values: Healthy, Unhealthy.
  final pulumi.Input<String?>? lastBackupStatus;
  /// Timestamp of the last backup operation on this backup item.
  final pulumi.Input<String?>? lastBackupTime;
  /// Timestamp when the last (latest) backup copy was created for this backup item.
  final pulumi.Input<String?>? lastRecoveryPoint;
  /// List of the nodes in case of distributed container.
  final pulumi.Input<List<DistributedNodesInfoResponse>?>? nodesList;
  /// Parent name of the DB such as Instance or Availability Group.
  final pulumi.Input<String?>? parentName;
  /// Parent type of protected item, example: for a DB, standalone server or distributed
  final pulumi.Input<String?>? parentType;
  /// ID of the backup policy with which this item is backed up.
  final pulumi.Input<String?>? policyId;
  /// Name of the policy used for protection
  final pulumi.Input<String?>? policyName;
  /// Data ID of the protected item.
  final pulumi.Input<String?>? protectedItemDataSourceId;
  /// Health status of the backup item, evaluated based on last heartbeat received
  final pulumi.Input<String?>? protectedItemHealthStatus;
  /// backup item type.
  /// Expected value is 'AzureVmWorkloadSAPHanaDatabase'.
  final pulumi.Input<String> protectedItemType;
  /// Backup state of this backup item.
  final pulumi.Input<String?>? protectionState;
  /// Backup status of this backup item.
  final pulumi.Input<String> protectionStatus;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>?>? resourceGuardOperationRequests;
  /// Host/Cluster Name for instance or AG
  final pulumi.Input<String?>? serverName;
  /// Soft delete retention period in days
  final pulumi.Input<int?>? softDeleteRetentionPeriodInDays;
  /// ARM ID of the resource to be backed up.
  final pulumi.Input<String?>? sourceResourceId;
  /// ID of the vault which protects this item
  final pulumi.Input<String> vaultId;
  /// Type of workload this item represents.
  final pulumi.Input<String> workloadType;

  /// Creates a new [AzureVmWorkloadSAPHanaDatabaseProtectedItemResponse].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [backupSetName] Name of the backup set the backup item belongs to
  /// [containerName] Unique name of container
  /// [createMode] Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  /// [deferredDeleteTimeInUTC] Time for deferred deletion in UTC
  /// [deferredDeleteTimeRemaining] Time remaining before the DS marked for deferred delete is permanently deleted
  /// [extendedInfo] Additional information for this backup item.
  /// [friendlyName] Friendly name of the DB represented by this backup item.
  /// [isArchiveEnabled] Flag to identify whether datasource is protected in archive
  /// [isDeferredDeleteScheduleUpcoming] Flag to identify whether the deferred deleted DS is to be purged soon
  /// [isRehydrate] Flag to identify that deferred deleted DS is to be moved into Pause state
  /// [isScheduledForDeferredDelete] Flag to identify whether the DS is scheduled for deferred delete
  /// [kpisHealths] Health details of different KPIs
  /// [lastBackupErrorDetail] Error details in last backup
  /// [lastBackupStatus] Last backup operation status. Possible values: Healthy, Unhealthy.
  /// [lastBackupTime] Timestamp of the last backup operation on this backup item.
  /// [lastRecoveryPoint] Timestamp when the last (latest) backup copy was created for this backup item.
  /// [nodesList] List of the nodes in case of distributed container.
  /// [parentName] Parent name of the DB such as Instance or Availability Group.
  /// [parentType] Parent type of protected item, example: for a DB, standalone server or distributed
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [policyName] Name of the policy used for protection
  /// [protectedItemDataSourceId] Data ID of the protected item.
  /// [protectedItemHealthStatus] Health status of the backup item, evaluated based on last heartbeat received
  /// [protectedItemType] backup item type.
  /// [protectionState] Backup state of this backup item.
  /// [protectionStatus] Backup status of this backup item.
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [serverName] Host/Cluster Name for instance or AG
  /// [softDeleteRetentionPeriodInDays] Soft delete retention period in days
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  /// [vaultId] ID of the vault which protects this item
  /// [workloadType] Type of workload this item represents.
  const AzureVmWorkloadSAPHanaDatabaseProtectedItemResponse({
    required this.backupManagementType,
    this.backupSetName,
    this.containerName,
    this.createMode,
    this.deferredDeleteTimeInUTC,
    this.deferredDeleteTimeRemaining,
    this.extendedInfo,
    required this.friendlyName,
    this.isArchiveEnabled,
    this.isDeferredDeleteScheduleUpcoming,
    this.isRehydrate,
    this.isScheduledForDeferredDelete,
    this.kpisHealths,
    this.lastBackupErrorDetail,
    this.lastBackupStatus,
    this.lastBackupTime,
    this.lastRecoveryPoint,
    this.nodesList,
    this.parentName,
    this.parentType,
    this.policyId,
    this.policyName,
    this.protectedItemDataSourceId,
    this.protectedItemHealthStatus,
    required this.protectedItemType,
    this.protectionState,
    required this.protectionStatus,
    this.resourceGuardOperationRequests,
    this.serverName,
    this.softDeleteRetentionPeriodInDays,
    this.sourceResourceId,
    required this.vaultId,
    required this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': backupManagementType,
      'backupSetName': ?backupSetName,
      'containerName': ?containerName,
      'createMode': ?createMode,
      'deferredDeleteTimeInUTC': ?deferredDeleteTimeInUTC,
      'deferredDeleteTimeRemaining': ?deferredDeleteTimeRemaining,
      'extendedInfo': ?pulumi.Input.mapOptionalInputValue<AzureVmWorkloadProtectedItemExtendedInfoResponse, Map<String, dynamic>>(extendedInfo, (value) => value.toMap()),
      'friendlyName': friendlyName,
      'isArchiveEnabled': ?isArchiveEnabled,
      'isDeferredDeleteScheduleUpcoming': ?isDeferredDeleteScheduleUpcoming,
      'isRehydrate': ?isRehydrate,
      'isScheduledForDeferredDelete': ?isScheduledForDeferredDelete,
      'kpisHealths': ?pulumi.Input.mapOptionalInputValue<Map<String, KPIResourceHealthDetailsResponse>, Map<String, Map<String, dynamic>>>(kpisHealths, (value) => pulumi.Input.encodeMapValues<KPIResourceHealthDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastBackupErrorDetail': ?pulumi.Input.mapOptionalInputValue<ErrorDetailResponse, Map<String, dynamic>>(lastBackupErrorDetail, (value) => value.toMap()),
      'lastBackupStatus': ?lastBackupStatus,
      'lastBackupTime': ?lastBackupTime,
      'lastRecoveryPoint': ?lastRecoveryPoint,
      'nodesList': ?pulumi.Input.mapOptionalInputValue<List<DistributedNodesInfoResponse>, List<Map<String, dynamic>>>(nodesList, (value) => pulumi.Input.encodeList<DistributedNodesInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentName': ?parentName,
      'parentType': ?parentType,
      'policyId': ?policyId,
      'policyName': ?policyName,
      'protectedItemDataSourceId': ?protectedItemDataSourceId,
      'protectedItemHealthStatus': ?protectedItemHealthStatus,
      'protectedItemType': protectedItemType,
      'protectionState': ?protectionState,
      'protectionStatus': protectionStatus,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'serverName': ?serverName,
      'softDeleteRetentionPeriodInDays': ?softDeleteRetentionPeriodInDays,
      'sourceResourceId': ?sourceResourceId,
      'vaultId': vaultId,
      'workloadType': workloadType,
    };
  }

  factory AzureVmWorkloadSAPHanaDatabaseProtectedItemResponse.fromMap(Map<String, dynamic> map) {
    return AzureVmWorkloadSAPHanaDatabaseProtectedItemResponse(
      backupManagementType: pulumi.Input.fromValue(map['backupManagementType'] as String),
      backupSetName: (() { final guardedValue = map['backupSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deferredDeleteTimeInUTC: (() { final guardedValue = map['deferredDeleteTimeInUTC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deferredDeleteTimeRemaining: (() { final guardedValue = map['deferredDeleteTimeRemaining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedInfo: (() { final guardedValue = map['extendedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureVmWorkloadProtectedItemExtendedInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: pulumi.Input.fromValue(map['friendlyName'] as String),
      isArchiveEnabled: (() { final guardedValue = map['isArchiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDeferredDeleteScheduleUpcoming: (() { final guardedValue = map['isDeferredDeleteScheduleUpcoming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRehydrate: (() { final guardedValue = map['isRehydrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isScheduledForDeferredDelete: (() { final guardedValue = map['isScheduledForDeferredDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kpisHealths: (() { final guardedValue = map['kpisHealths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<KPIResourceHealthDetailsResponse>(guardedValue, (value) => KPIResourceHealthDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastBackupErrorDetail: (() { final guardedValue = map['lastBackupErrorDetail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastBackupStatus: (() { final guardedValue = map['lastBackupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastBackupTime: (() { final guardedValue = map['lastBackupTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRecoveryPoint: (() { final guardedValue = map['lastRecoveryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodesList: (() { final guardedValue = map['nodesList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DistributedNodesInfoResponse>(guardedValue, (value) => DistributedNodesInfoResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parentName: (() { final guardedValue = map['parentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentType: (() { final guardedValue = map['parentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedItemDataSourceId: (() { final guardedValue = map['protectedItemDataSourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedItemHealthStatus: (() { final guardedValue = map['protectedItemHealthStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedItemType: pulumi.Input.fromValue(map['protectedItemType'] as String),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionStatus: pulumi.Input.fromValue(map['protectionStatus'] as String),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softDeleteRetentionPeriodInDays: (() { final guardedValue = map['softDeleteRetentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
      workloadType: pulumi.Input.fromValue(map['workloadType'] as String),
    );
  }
}
