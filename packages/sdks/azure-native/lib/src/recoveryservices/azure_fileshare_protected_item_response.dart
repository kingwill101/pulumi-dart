// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_fileshare_protected_item_extended_info_response.dart';
import 'kpiresource_health_details_response.dart';

/// Azure File Share workload-specific backup item.
class AzureFileshareProtectedItemResponse {
  /// Type of backup management for the backed up item.
  final String backupManagementType;
  /// Name of the backup set the backup item belongs to
  final String? backupSetName;
  /// Unique name of container
  final String? containerName;
  /// Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  final String? createMode;
  /// Time for deferred deletion in UTC
  final String? deferredDeleteTimeInUTC;
  /// Time remaining before the DS marked for deferred delete is permanently deleted
  final String? deferredDeleteTimeRemaining;
  /// Additional information with this backup item.
  final AzureFileshareProtectedItemExtendedInfoResponse? extendedInfo;
  /// Friendly name of the fileshare represented by this backup item.
  final String? friendlyName;
  /// Flag to identify whether datasource is protected in archive
  final bool? isArchiveEnabled;
  /// Flag to identify whether the deferred deleted DS is to be purged soon
  final bool? isDeferredDeleteScheduleUpcoming;
  /// Flag to identify that deferred deleted DS is to be moved into Pause state
  final bool? isRehydrate;
  /// Flag to identify whether the DS is scheduled for deferred delete
  final bool? isScheduledForDeferredDelete;
  /// Health details of different KPIs
  final Map<String, KPIResourceHealthDetailsResponse>? kpisHealths;
  /// Last backup operation status. Possible values: Healthy, Unhealthy.
  final String? lastBackupStatus;
  /// Timestamp of the last backup operation on this backup item.
  final String? lastBackupTime;
  /// Timestamp when the last (latest) backup copy was created for this backup item.
  final String? lastRecoveryPoint;
  /// ID of the backup policy with which this item is backed up.
  final String? policyId;
  /// Name of the policy used for protection
  final String? policyName;
  /// backup item type.
  /// Expected value is 'AzureFileShareProtectedItem'.
  final String protectedItemType;
  /// Backup state of this backup item.
  final String? protectionState;
  /// Backup status of this backup item.
  final String? protectionStatus;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final List<String>? resourceGuardOperationRequests;
  /// Soft delete retention period in days
  final int? softDeleteRetentionPeriodInDays;
  /// ARM ID of the resource to be backed up.
  final String? sourceResourceId;
  /// ID of the vault which protects this item
  final String vaultId;
  /// Type of workload this item represents.
  final String workloadType;

  /// Creates a new [AzureFileshareProtectedItemResponse].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [backupSetName] Name of the backup set the backup item belongs to
  /// [containerName] Unique name of container
  /// [createMode] Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  /// [deferredDeleteTimeInUTC] Time for deferred deletion in UTC
  /// [deferredDeleteTimeRemaining] Time remaining before the DS marked for deferred delete is permanently deleted
  /// [extendedInfo] Additional information with this backup item.
  /// [friendlyName] Friendly name of the fileshare represented by this backup item.
  /// [isArchiveEnabled] Flag to identify whether datasource is protected in archive
  /// [isDeferredDeleteScheduleUpcoming] Flag to identify whether the deferred deleted DS is to be purged soon
  /// [isRehydrate] Flag to identify that deferred deleted DS is to be moved into Pause state
  /// [isScheduledForDeferredDelete] Flag to identify whether the DS is scheduled for deferred delete
  /// [kpisHealths] Health details of different KPIs
  /// [lastBackupStatus] Last backup operation status. Possible values: Healthy, Unhealthy.
  /// [lastBackupTime] Timestamp of the last backup operation on this backup item.
  /// [lastRecoveryPoint] Timestamp when the last (latest) backup copy was created for this backup item.
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [policyName] Name of the policy used for protection
  /// [protectedItemType] backup item type.
  /// [protectionState] Backup state of this backup item.
  /// [protectionStatus] Backup status of this backup item.
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [softDeleteRetentionPeriodInDays] Soft delete retention period in days
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  /// [vaultId] ID of the vault which protects this item
  /// [workloadType] Type of workload this item represents.
  AzureFileshareProtectedItemResponse({
    required this.backupManagementType,
    this.backupSetName,
    this.containerName,
    this.createMode,
    this.deferredDeleteTimeInUTC,
    this.deferredDeleteTimeRemaining,
    this.extendedInfo,
    this.friendlyName,
    this.isArchiveEnabled,
    this.isDeferredDeleteScheduleUpcoming,
    this.isRehydrate,
    this.isScheduledForDeferredDelete,
    this.kpisHealths,
    this.lastBackupStatus,
    this.lastBackupTime,
    this.lastRecoveryPoint,
    this.policyId,
    this.policyName,
    required this.protectedItemType,
    this.protectionState,
    this.protectionStatus,
    this.resourceGuardOperationRequests,
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
      'extendedInfo': ?extendedInfo == null ? null : extendedInfo!.toMap(),
      'friendlyName': ?friendlyName,
      'isArchiveEnabled': ?isArchiveEnabled,
      'isDeferredDeleteScheduleUpcoming': ?isDeferredDeleteScheduleUpcoming,
      'isRehydrate': ?isRehydrate,
      'isScheduledForDeferredDelete': ?isScheduledForDeferredDelete,
      'kpisHealths': ?kpisHealths == null ? null : pulumi.Input.encodeMapValues<KPIResourceHealthDetailsResponse, Map<String, dynamic>>(kpisHealths!, (value) => value.toMap()),
      'lastBackupStatus': ?lastBackupStatus,
      'lastBackupTime': ?lastBackupTime,
      'lastRecoveryPoint': ?lastRecoveryPoint,
      'policyId': ?policyId,
      'policyName': ?policyName,
      'protectedItemType': protectedItemType,
      'protectionState': ?protectionState,
      'protectionStatus': ?protectionStatus,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'softDeleteRetentionPeriodInDays': ?softDeleteRetentionPeriodInDays,
      'sourceResourceId': ?sourceResourceId,
      'vaultId': vaultId,
      'workloadType': workloadType,
    };
  }

  factory AzureFileshareProtectedItemResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileshareProtectedItemResponse(
      backupManagementType: map['backupManagementType'] as String,
      backupSetName: map['backupSetName'] == null ? null : map['backupSetName'] as String,
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      deferredDeleteTimeInUTC: map['deferredDeleteTimeInUTC'] == null ? null : map['deferredDeleteTimeInUTC'] as String,
      deferredDeleteTimeRemaining: map['deferredDeleteTimeRemaining'] == null ? null : map['deferredDeleteTimeRemaining'] as String,
      extendedInfo: map['extendedInfo'] == null ? null : AzureFileshareProtectedItemExtendedInfoResponse.fromMap((map['extendedInfo'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      isArchiveEnabled: map['isArchiveEnabled'] == null ? null : map['isArchiveEnabled'] as bool,
      isDeferredDeleteScheduleUpcoming: map['isDeferredDeleteScheduleUpcoming'] == null ? null : map['isDeferredDeleteScheduleUpcoming'] as bool,
      isRehydrate: map['isRehydrate'] == null ? null : map['isRehydrate'] as bool,
      isScheduledForDeferredDelete: map['isScheduledForDeferredDelete'] == null ? null : map['isScheduledForDeferredDelete'] as bool,
      kpisHealths: map['kpisHealths'] == null ? null : pulumi.Input.decodeMapValues<KPIResourceHealthDetailsResponse>(map['kpisHealths'], (value) => KPIResourceHealthDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastBackupStatus: map['lastBackupStatus'] == null ? null : map['lastBackupStatus'] as String,
      lastBackupTime: map['lastBackupTime'] == null ? null : map['lastBackupTime'] as String,
      lastRecoveryPoint: map['lastRecoveryPoint'] == null ? null : map['lastRecoveryPoint'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      protectedItemType: map['protectedItemType'] as String,
      protectionState: map['protectionState'] == null ? null : map['protectionState'] as String,
      protectionStatus: map['protectionStatus'] == null ? null : map['protectionStatus'] as String,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      softDeleteRetentionPeriodInDays: map['softDeleteRetentionPeriodInDays'] == null ? null : map['softDeleteRetentionPeriodInDays'] as int,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      vaultId: map['vaultId'] as String,
      workloadType: map['workloadType'] as String,
    );
  }
}

