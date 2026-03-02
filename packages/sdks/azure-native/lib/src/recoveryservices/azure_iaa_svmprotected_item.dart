// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_iaa_svmprotected_item_extended_info.dart';
import 'extended_properties.dart';
import 'kpiresource_health_details.dart';

/// IaaS VM workload-specific backup item.
class AzureIaaSVMProtectedItem {
  /// Name of the backup set the backup item belongs to
  final pulumi.Input<String>? backupSetName;
  /// Unique name of container
  final pulumi.Input<String>? containerName;
  /// Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  final pulumi.Input<String>? createMode;
  /// Time for deferred deletion in UTC
  final pulumi.Input<String>? deferredDeleteTimeInUTC;
  /// Time remaining before the DS marked for deferred delete is permanently deleted
  final pulumi.Input<String>? deferredDeleteTimeRemaining;
  /// Additional information for this backup item.
  final pulumi.Input<AzureIaaSVMProtectedItemExtendedInfo>? extendedInfo;
  /// Extended Properties for Azure IaasVM Backup.
  final pulumi.Input<ExtendedProperties>? extendedProperties;
  /// Flag to identify whether datasource is protected in archive
  final pulumi.Input<bool>? isArchiveEnabled;
  /// Flag to identify whether the deferred deleted DS is to be purged soon
  final pulumi.Input<bool>? isDeferredDeleteScheduleUpcoming;
  /// Flag to identify that deferred deleted DS is to be moved into Pause state
  final pulumi.Input<bool>? isRehydrate;
  /// Flag to identify whether the DS is scheduled for deferred delete
  final pulumi.Input<bool>? isScheduledForDeferredDelete;
  /// Health details of different KPIs
  final pulumi.Input<Map<String, KPIResourceHealthDetails>>? kpisHealths;
  /// Last backup operation status.
  final pulumi.Input<String>? lastBackupStatus;
  /// Timestamp when the last (latest) backup copy was created for this backup item.
  final pulumi.Input<String>? lastRecoveryPoint;
  /// ID of the backup policy with which this item is backed up.
  final pulumi.Input<String>? policyId;
  /// Name of the policy used for protection
  final pulumi.Input<String>? policyName;
  /// backup item type.
  /// Expected value is 'AzureIaaSVMProtectedItem'.
  final pulumi.Input<String> protectedItemType;
  /// Backup state of this backup item.
  final pulumi.Input<String>? protectionState;
  /// Backup status of this backup item.
  final pulumi.Input<String>? protectionStatus;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>>? resourceGuardOperationRequests;
  /// Soft delete retention period in days
  final pulumi.Input<int>? softDeleteRetentionPeriodInDays;
  /// ARM ID of the resource to be backed up.
  final pulumi.Input<String>? sourceResourceId;

  /// Creates a new [AzureIaaSVMProtectedItem].
  /// [backupSetName] Name of the backup set the backup item belongs to
  /// [containerName] Unique name of container
  /// [createMode] Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  /// [deferredDeleteTimeInUTC] Time for deferred deletion in UTC
  /// [deferredDeleteTimeRemaining] Time remaining before the DS marked for deferred delete is permanently deleted
  /// [extendedInfo] Additional information for this backup item.
  /// [extendedProperties] Extended Properties for Azure IaasVM Backup.
  /// [isArchiveEnabled] Flag to identify whether datasource is protected in archive
  /// [isDeferredDeleteScheduleUpcoming] Flag to identify whether the deferred deleted DS is to be purged soon
  /// [isRehydrate] Flag to identify that deferred deleted DS is to be moved into Pause state
  /// [isScheduledForDeferredDelete] Flag to identify whether the DS is scheduled for deferred delete
  /// [kpisHealths] Health details of different KPIs
  /// [lastBackupStatus] Last backup operation status.
  /// [lastRecoveryPoint] Timestamp when the last (latest) backup copy was created for this backup item.
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [policyName] Name of the policy used for protection
  /// [protectedItemType] backup item type.
  /// [protectionState] Backup state of this backup item.
  /// [protectionStatus] Backup status of this backup item.
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [softDeleteRetentionPeriodInDays] Soft delete retention period in days
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  AzureIaaSVMProtectedItem({
    this.backupSetName,
    this.containerName,
    this.createMode,
    this.deferredDeleteTimeInUTC,
    this.deferredDeleteTimeRemaining,
    this.extendedInfo,
    this.extendedProperties,
    this.isArchiveEnabled,
    this.isDeferredDeleteScheduleUpcoming,
    this.isRehydrate,
    this.isScheduledForDeferredDelete,
    this.kpisHealths,
    this.lastBackupStatus,
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
      'extendedInfo': ?pulumi.Input.mapOptionalInputValue<AzureIaaSVMProtectedItemExtendedInfo, Map<String, dynamic>>(extendedInfo, (value) => value.toMap()),
      'extendedProperties': ?pulumi.Input.mapOptionalInputValue<ExtendedProperties, Map<String, dynamic>>(extendedProperties, (value) => value.toMap()),
      'isArchiveEnabled': ?isArchiveEnabled,
      'isDeferredDeleteScheduleUpcoming': ?isDeferredDeleteScheduleUpcoming,
      'isRehydrate': ?isRehydrate,
      'isScheduledForDeferredDelete': ?isScheduledForDeferredDelete,
      'kpisHealths': ?pulumi.Input.mapOptionalInputValue<Map<String, KPIResourceHealthDetails>, Map<String, Map<String, dynamic>>>(kpisHealths, (value) => pulumi.Input.encodeMapValues<KPIResourceHealthDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastBackupStatus': ?lastBackupStatus,
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

  factory AzureIaaSVMProtectedItem.fromMap(Map<String, dynamic> map) {
    return AzureIaaSVMProtectedItem(
      backupSetName: map['backupSetName'] == null ? null : (map['backupSetName']! as String).input(),
      containerName: map['containerName'] == null ? null : (map['containerName']! as String).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      deferredDeleteTimeInUTC: map['deferredDeleteTimeInUTC'] == null ? null : (map['deferredDeleteTimeInUTC']! as String).input(),
      deferredDeleteTimeRemaining: map['deferredDeleteTimeRemaining'] == null ? null : (map['deferredDeleteTimeRemaining']! as String).input(),
      extendedInfo: map['extendedInfo'] == null ? null : (AzureIaaSVMProtectedItemExtendedInfo.fromMap((map['extendedInfo']! as Map).cast<String, dynamic>())).input(),
      extendedProperties: map['extendedProperties'] == null ? null : (ExtendedProperties.fromMap((map['extendedProperties']! as Map).cast<String, dynamic>())).input(),
      isArchiveEnabled: map['isArchiveEnabled'] == null ? null : (map['isArchiveEnabled']! as bool).input(),
      isDeferredDeleteScheduleUpcoming: map['isDeferredDeleteScheduleUpcoming'] == null ? null : (map['isDeferredDeleteScheduleUpcoming']! as bool).input(),
      isRehydrate: map['isRehydrate'] == null ? null : (map['isRehydrate']! as bool).input(),
      isScheduledForDeferredDelete: map['isScheduledForDeferredDelete'] == null ? null : (map['isScheduledForDeferredDelete']! as bool).input(),
      kpisHealths: map['kpisHealths'] == null ? null : (pulumi.Input.decodeMapValues<KPIResourceHealthDetails>(map['kpisHealths']!, (value) => KPIResourceHealthDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      lastBackupStatus: map['lastBackupStatus'] == null ? null : (map['lastBackupStatus']! as String).input(),
      lastRecoveryPoint: map['lastRecoveryPoint'] == null ? null : (map['lastRecoveryPoint']! as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId']! as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      protectedItemType: (map['protectedItemType'] as String).input(),
      protectionState: map['protectionState'] == null ? null : (map['protectionState']! as String).input(),
      protectionStatus: map['protectionStatus'] == null ? null : (map['protectionStatus']! as String).input(),
      resourceGuardOperationRequests: map['resourceGuardOperationRequests'] == null ? null : ((map['resourceGuardOperationRequests']! as List).cast<String>()).input(),
      softDeleteRetentionPeriodInDays: map['softDeleteRetentionPeriodInDays'] == null ? null : (map['softDeleteRetentionPeriodInDays']! as int).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId']! as String).input(),
    );
  }
}

