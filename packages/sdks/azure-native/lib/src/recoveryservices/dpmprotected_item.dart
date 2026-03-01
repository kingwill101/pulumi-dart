// ignore_for_file: unused_element, unnecessary_cast

import 'dpmprotected_item_extended_info.dart';

/// Additional information on Backup engine specific backup item.
class DPMProtectedItem {
  /// Backup Management server protecting this backup item
  final String? backupEngineName;
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
  /// Extended info of the backup item.
  final DPMProtectedItemExtendedInfo? extendedInfo;
  /// Friendly name of the managed item
  final String? friendlyName;
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
  /// backup item type.
  /// Expected value is 'DPMProtectedItem'.
  final String protectedItemType;
  /// Protection state of the backup engine
  final String? protectionState;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final List<String>? resourceGuardOperationRequests;
  /// Soft delete retention period in days
  final int? softDeleteRetentionPeriodInDays;
  /// ARM ID of the resource to be backed up.
  final String? sourceResourceId;

  /// Creates a new [DPMProtectedItem].
  /// [backupEngineName] Backup Management server protecting this backup item
  /// [backupSetName] Name of the backup set the backup item belongs to
  /// [containerName] Unique name of container
  /// [createMode] Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  /// [deferredDeleteTimeInUTC] Time for deferred deletion in UTC
  /// [deferredDeleteTimeRemaining] Time remaining before the DS marked for deferred delete is permanently deleted
  /// [extendedInfo] Extended info of the backup item.
  /// [friendlyName] Friendly name of the managed item
  /// [isArchiveEnabled] Flag to identify whether datasource is protected in archive
  /// [isDeferredDeleteScheduleUpcoming] Flag to identify whether the deferred deleted DS is to be purged soon
  /// [isRehydrate] Flag to identify that deferred deleted DS is to be moved into Pause state
  /// [isScheduledForDeferredDelete] Flag to identify whether the DS is scheduled for deferred delete
  /// [lastRecoveryPoint] Timestamp when the last (latest) backup copy was created for this backup item.
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [policyName] Name of the policy used for protection
  /// [protectedItemType] backup item type.
  /// [protectionState] Protection state of the backup engine
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [softDeleteRetentionPeriodInDays] Soft delete retention period in days
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  DPMProtectedItem({
    this.backupEngineName,
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
    this.lastRecoveryPoint,
    this.policyId,
    this.policyName,
    required this.protectedItemType,
    this.protectionState,
    this.resourceGuardOperationRequests,
    this.softDeleteRetentionPeriodInDays,
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupEngineName': ?backupEngineName,
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
      'lastRecoveryPoint': ?lastRecoveryPoint,
      'policyId': ?policyId,
      'policyName': ?policyName,
      'protectedItemType': protectedItemType,
      'protectionState': ?protectionState,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'softDeleteRetentionPeriodInDays': ?softDeleteRetentionPeriodInDays,
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory DPMProtectedItem.fromMap(Map<String, dynamic> map) {
    return DPMProtectedItem(
      backupEngineName: map['backupEngineName'] == null ? null : map['backupEngineName'] as String,
      backupSetName: map['backupSetName'] == null ? null : map['backupSetName'] as String,
      containerName: map['containerName'] == null ? null : map['containerName'] as String,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      deferredDeleteTimeInUTC: map['deferredDeleteTimeInUTC'] == null ? null : map['deferredDeleteTimeInUTC'] as String,
      deferredDeleteTimeRemaining: map['deferredDeleteTimeRemaining'] == null ? null : map['deferredDeleteTimeRemaining'] as String,
      extendedInfo: map['extendedInfo'] == null ? null : DPMProtectedItemExtendedInfo.fromMap((map['extendedInfo'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      isArchiveEnabled: map['isArchiveEnabled'] == null ? null : map['isArchiveEnabled'] as bool,
      isDeferredDeleteScheduleUpcoming: map['isDeferredDeleteScheduleUpcoming'] == null ? null : map['isDeferredDeleteScheduleUpcoming'] as bool,
      isRehydrate: map['isRehydrate'] == null ? null : map['isRehydrate'] as bool,
      isScheduledForDeferredDelete: map['isScheduledForDeferredDelete'] == null ? null : map['isScheduledForDeferredDelete'] as bool,
      lastRecoveryPoint: map['lastRecoveryPoint'] == null ? null : map['lastRecoveryPoint'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      protectedItemType: map['protectedItemType'] as String,
      protectionState: map['protectionState'] == null ? null : map['protectionState'] as String,
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : (map['resourceGuardOperationRequests'] as List).cast<String>(),
      softDeleteRetentionPeriodInDays: map['softDeleteRetentionPeriodInDays'] == null ? null : map['softDeleteRetentionPeriodInDays'] as int,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
    );
  }
}

