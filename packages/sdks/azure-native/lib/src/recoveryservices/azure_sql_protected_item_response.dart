// ignore_for_file: unused_element, unnecessary_cast

import 'azure_sql_protected_item_extended_info_response.dart';

/// Azure SQL workload-specific backup item.
class AzureSqlProtectedItemResponse {
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
  /// Additional information for this backup item.
  final AzureSqlProtectedItemExtendedInfoResponse? extendedInfo;
  /// Flag to identify whether datasource is protected in archive
  final bool? isArchiveEnabled;
  /// Flag to identify whether the deferred deleted DS is to be purged soon
  final bool? isDeferredDeleteScheduleUpcoming;
  /// Flag to identify that deferred deleted DS is to be moved into Pause state
  final bool? isRehydrate;
  /// Flag to identify whether the DS is scheduled for deferred delete
  final bool? isScheduledForDeferredDelete;
  /// Timestamp when the last (latest) backup copy was created for this backup item.
  final String? lastRecoveryPoint;
  /// ID of the backup policy with which this item is backed up.
  final String? policyId;
  /// Name of the policy used for protection
  final String? policyName;
  /// Internal ID of a backup item. Used by Azure SQL Backup engine to contact Recovery Services.
  final String? protectedItemDataId;
  /// backup item type.
  /// Expected value is 'Microsoft.Sql/servers/databases'.
  final String protectedItemType;
  /// Backup state of the backed up item.
  final String? protectionState;
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

  /// Creates a new [AzureSqlProtectedItemResponse].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [backupSetName] Name of the backup set the backup item belongs to
  /// [containerName] Unique name of container
  /// [createMode] Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  /// [deferredDeleteTimeInUTC] Time for deferred deletion in UTC
  /// [deferredDeleteTimeRemaining] Time remaining before the DS marked for deferred delete is permanently deleted
  /// [extendedInfo] Additional information for this backup item.
  /// [isArchiveEnabled] Flag to identify whether datasource is protected in archive
  /// [isDeferredDeleteScheduleUpcoming] Flag to identify whether the deferred deleted DS is to be purged soon
  /// [isRehydrate] Flag to identify that deferred deleted DS is to be moved into Pause state
  /// [isScheduledForDeferredDelete] Flag to identify whether the DS is scheduled for deferred delete
  /// [lastRecoveryPoint] Timestamp when the last (latest) backup copy was created for this backup item.
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [policyName] Name of the policy used for protection
  /// [protectedItemDataId] Internal ID of a backup item. Used by Azure SQL Backup engine to contact Recovery Services.
  /// [protectedItemType] backup item type.
  /// [protectionState] Backup state of the backed up item.
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [softDeleteRetentionPeriodInDays] Soft delete retention period in days
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  /// [vaultId] ID of the vault which protects this item
  /// [workloadType] Type of workload this item represents.
  AzureSqlProtectedItemResponse({
    required this.backupManagementType,
    this.backupSetName,
    this.containerName,
    this.createMode,
    this.deferredDeleteTimeInUTC,
    this.deferredDeleteTimeRemaining,
    this.extendedInfo,
    this.isArchiveEnabled,
    this.isDeferredDeleteScheduleUpcoming,
    this.isRehydrate,
    this.isScheduledForDeferredDelete,
    this.lastRecoveryPoint,
    this.policyId,
    this.policyName,
    this.protectedItemDataId,
    required this.protectedItemType,
    this.protectionState,
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
      'isArchiveEnabled': ?isArchiveEnabled,
      'isDeferredDeleteScheduleUpcoming': ?isDeferredDeleteScheduleUpcoming,
      'isRehydrate': ?isRehydrate,
      'isScheduledForDeferredDelete': ?isScheduledForDeferredDelete,
      'lastRecoveryPoint': ?lastRecoveryPoint,
      'policyId': ?policyId,
      'policyName': ?policyName,
      'protectedItemDataId': ?protectedItemDataId,
      'protectedItemType': protectedItemType,
      'protectionState': ?protectionState,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'softDeleteRetentionPeriodInDays': ?softDeleteRetentionPeriodInDays,
      'sourceResourceId': ?sourceResourceId,
      'vaultId': vaultId,
      'workloadType': workloadType,
    };
  }

  factory AzureSqlProtectedItemResponse.fromMap(Map<String, dynamic> map) {
    return AzureSqlProtectedItemResponse(
      backupManagementType: map['backupManagementType'] as String,
      backupSetName: map['backupSetName'] == null ? null : map['backupSetName'] as String,
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      deferredDeleteTimeInUTC: map['deferredDeleteTimeInUTC'] == null ? null : map['deferredDeleteTimeInUTC'] as String,
      deferredDeleteTimeRemaining: map['deferredDeleteTimeRemaining'] == null ? null : map['deferredDeleteTimeRemaining'] as String,
      extendedInfo: map['extendedInfo'] == null ? null : AzureSqlProtectedItemExtendedInfoResponse.fromMap((map['extendedInfo'] as Map).cast<String, dynamic>()),
      isArchiveEnabled: map['isArchiveEnabled'] == null ? null : map['isArchiveEnabled'] as bool,
      isDeferredDeleteScheduleUpcoming: map['isDeferredDeleteScheduleUpcoming'] == null ? null : map['isDeferredDeleteScheduleUpcoming'] as bool,
      isRehydrate: map['isRehydrate'] == null ? null : map['isRehydrate'] as bool,
      isScheduledForDeferredDelete: map['isScheduledForDeferredDelete'] == null ? null : map['isScheduledForDeferredDelete'] as bool,
      lastRecoveryPoint: map['lastRecoveryPoint'] == null ? null : map['lastRecoveryPoint'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      protectedItemDataId: map['protectedItemDataId'] == null ? null : map['protectedItemDataId'] as String,
      protectedItemType: map['protectedItemType'] as String,
      protectionState: map['protectionState'] == null ? null : map['protectionState'] as String,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      softDeleteRetentionPeriodInDays: map['softDeleteRetentionPeriodInDays'] == null ? null : map['softDeleteRetentionPeriodInDays'] as int,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      vaultId: map['vaultId'] as String,
      workloadType: map['workloadType'] as String,
    );
  }
}

