// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_fileshare_protected_item_extended_info.dart';
import 'kpiresource_health_details.dart';

/// Azure File Share workload-specific backup item.
class AzureFileshareProtectedItem {
  /// Name of the backup set the backup item belongs to
  final pulumi.Input<String?>? backupSetName;
  /// Unique name of container
  final pulumi.Input<String?>? containerName;
  /// Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  final pulumi.Input<dynamic>? createMode;
  /// Time for deferred deletion in UTC
  final pulumi.Input<String?>? deferredDeleteTimeInUTC;
  /// Time remaining before the DS marked for deferred delete is permanently deleted
  final pulumi.Input<String?>? deferredDeleteTimeRemaining;
  /// Additional information with this backup item.
  final pulumi.Input<AzureFileshareProtectedItemExtendedInfo?>? extendedInfo;
  /// Friendly name of the fileshare represented by this backup item.
  final pulumi.Input<String?>? friendlyName;
  /// Flag to identify whether datasource is protected in archive
  final pulumi.Input<bool?>? isArchiveEnabled;
  /// Flag to identify whether the deferred deleted DS is to be purged soon
  final pulumi.Input<bool?>? isDeferredDeleteScheduleUpcoming;
  /// Flag to identify that deferred deleted DS is to be moved into Pause state
  final pulumi.Input<bool?>? isRehydrate;
  /// Flag to identify whether the DS is scheduled for deferred delete
  final pulumi.Input<bool?>? isScheduledForDeferredDelete;
  /// Health details of different KPIs
  final pulumi.Input<Map<String, KPIResourceHealthDetails>?>? kpisHealths;
  /// Last backup operation status. Possible values: Healthy, Unhealthy.
  final pulumi.Input<String?>? lastBackupStatus;
  /// Timestamp of the last backup operation on this backup item.
  final pulumi.Input<String?>? lastBackupTime;
  /// Timestamp when the last (latest) backup copy was created for this backup item.
  final pulumi.Input<String?>? lastRecoveryPoint;
  /// ID of the backup policy with which this item is backed up.
  final pulumi.Input<String?>? policyId;
  /// Name of the policy used for protection
  final pulumi.Input<String?>? policyName;
  /// backup item type.
  /// Expected value is 'AzureFileShareProtectedItem'.
  final pulumi.Input<String> protectedItemType;
  /// Backup state of this backup item.
  final pulumi.Input<dynamic>? protectionState;
  /// Backup status of this backup item.
  final pulumi.Input<String?>? protectionStatus;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>?>? resourceGuardOperationRequests;
  /// Soft delete retention period in days
  final pulumi.Input<int?>? softDeleteRetentionPeriodInDays;
  /// ARM ID of the resource to be backed up.
  final pulumi.Input<String?>? sourceResourceId;

  /// Creates a new [AzureFileshareProtectedItem].
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
  const AzureFileshareProtectedItem({
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupSetName': ?backupSetName,
      'containerName': ?containerName,
      'createMode': ?createMode,
      'deferredDeleteTimeInUTC': ?deferredDeleteTimeInUTC,
      'deferredDeleteTimeRemaining': ?deferredDeleteTimeRemaining,
      'extendedInfo': ?pulumi.Input.mapOptionalInputValue<AzureFileshareProtectedItemExtendedInfo, Map<String, dynamic>>(extendedInfo, (value) => value.toMap()),
      'friendlyName': ?friendlyName,
      'isArchiveEnabled': ?isArchiveEnabled,
      'isDeferredDeleteScheduleUpcoming': ?isDeferredDeleteScheduleUpcoming,
      'isRehydrate': ?isRehydrate,
      'isScheduledForDeferredDelete': ?isScheduledForDeferredDelete,
      'kpisHealths': ?pulumi.Input.mapOptionalInputValue<Map<String, KPIResourceHealthDetails>, Map<String, Map<String, dynamic>>>(kpisHealths, (value) => pulumi.Input.encodeMapValues<KPIResourceHealthDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
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
    };
  }

  factory AzureFileshareProtectedItem.fromMap(Map<String, dynamic> map) {
    return AzureFileshareProtectedItem(
      backupSetName: (() { final guardedValue = map['backupSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      deferredDeleteTimeInUTC: (() { final guardedValue = map['deferredDeleteTimeInUTC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deferredDeleteTimeRemaining: (() { final guardedValue = map['deferredDeleteTimeRemaining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedInfo: (() { final guardedValue = map['extendedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFileshareProtectedItemExtendedInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isArchiveEnabled: (() { final guardedValue = map['isArchiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDeferredDeleteScheduleUpcoming: (() { final guardedValue = map['isDeferredDeleteScheduleUpcoming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRehydrate: (() { final guardedValue = map['isRehydrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isScheduledForDeferredDelete: (() { final guardedValue = map['isScheduledForDeferredDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kpisHealths: (() { final guardedValue = map['kpisHealths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<KPIResourceHealthDetails>(guardedValue, (value) => KPIResourceHealthDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastBackupStatus: (() { final guardedValue = map['lastBackupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastBackupTime: (() { final guardedValue = map['lastBackupTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRecoveryPoint: (() { final guardedValue = map['lastRecoveryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedItemType: pulumi.Input.fromValue(map['protectedItemType'] as String),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      protectionStatus: (() { final guardedValue = map['protectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      softDeleteRetentionPeriodInDays: (() { final guardedValue = map['softDeleteRetentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
