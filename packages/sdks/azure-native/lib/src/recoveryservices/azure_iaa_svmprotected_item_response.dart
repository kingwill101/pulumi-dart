// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_iaa_svmhealth_details_response.dart';
import 'azure_iaa_svmprotected_item_extended_info_response.dart';
import 'extended_properties_response.dart';
import 'kpiresource_health_details_response.dart';

/// IaaS VM workload-specific backup item.
class AzureIaaSVMProtectedItemResponse {
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
  final pulumi.Input<AzureIaaSVMProtectedItemExtendedInfoResponse?>? extendedInfo;
  /// Extended Properties for Azure IaasVM Backup.
  final pulumi.Input<ExtendedPropertiesResponse?>? extendedProperties;
  /// Friendly name of the VM represented by this backup item.
  final pulumi.Input<String> friendlyName;
  /// Health details on this backup item.
  final pulumi.Input<List<AzureIaaSVMHealthDetailsResponse>?>? healthDetails;
  /// Health status of protected item.
  final pulumi.Input<String> healthStatus;
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
  /// Last backup operation status.
  final pulumi.Input<String?>? lastBackupStatus;
  /// Timestamp of the last backup operation on this backup item.
  final pulumi.Input<String> lastBackupTime;
  /// Timestamp when the last (latest) backup copy was created for this backup item.
  final pulumi.Input<String?>? lastRecoveryPoint;
  /// ID of the backup policy with which this item is backed up.
  final pulumi.Input<String?>? policyId;
  /// Name of the policy used for protection
  final pulumi.Input<String?>? policyName;
  /// Data ID of the protected item.
  final pulumi.Input<String> protectedItemDataId;
  /// backup item type.
  /// Expected value is 'AzureIaaSVMProtectedItem'.
  final pulumi.Input<String> protectedItemType;
  /// Backup state of this backup item.
  final pulumi.Input<String?>? protectionState;
  /// Backup status of this backup item.
  final pulumi.Input<String?>? protectionStatus;
  /// ResourceGuardOperationRequests on which LAC check will be performed
  final pulumi.Input<List<String>?>? resourceGuardOperationRequests;
  /// Soft delete retention period in days
  final pulumi.Input<int?>? softDeleteRetentionPeriodInDays;
  /// ARM ID of the resource to be backed up.
  final pulumi.Input<String?>? sourceResourceId;
  /// ID of the vault which protects this item
  final pulumi.Input<String> vaultId;
  /// Fully qualified ARM ID of the virtual machine represented by this item.
  final pulumi.Input<String> virtualMachineId;
  /// Type of workload this item represents.
  final pulumi.Input<String> workloadType;

  /// Creates a new [AzureIaaSVMProtectedItemResponse].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [backupSetName] Name of the backup set the backup item belongs to
  /// [containerName] Unique name of container
  /// [createMode] Create mode to indicate recovery of existing soft deleted data source or creation of new data source.
  /// [deferredDeleteTimeInUTC] Time for deferred deletion in UTC
  /// [deferredDeleteTimeRemaining] Time remaining before the DS marked for deferred delete is permanently deleted
  /// [extendedInfo] Additional information for this backup item.
  /// [extendedProperties] Extended Properties for Azure IaasVM Backup.
  /// [friendlyName] Friendly name of the VM represented by this backup item.
  /// [healthDetails] Health details on this backup item.
  /// [healthStatus] Health status of protected item.
  /// [isArchiveEnabled] Flag to identify whether datasource is protected in archive
  /// [isDeferredDeleteScheduleUpcoming] Flag to identify whether the deferred deleted DS is to be purged soon
  /// [isRehydrate] Flag to identify that deferred deleted DS is to be moved into Pause state
  /// [isScheduledForDeferredDelete] Flag to identify whether the DS is scheduled for deferred delete
  /// [kpisHealths] Health details of different KPIs
  /// [lastBackupStatus] Last backup operation status.
  /// [lastBackupTime] Timestamp of the last backup operation on this backup item.
  /// [lastRecoveryPoint] Timestamp when the last (latest) backup copy was created for this backup item.
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [policyName] Name of the policy used for protection
  /// [protectedItemDataId] Data ID of the protected item.
  /// [protectedItemType] backup item type.
  /// [protectionState] Backup state of this backup item.
  /// [protectionStatus] Backup status of this backup item.
  /// [resourceGuardOperationRequests] ResourceGuardOperationRequests on which LAC check will be performed
  /// [softDeleteRetentionPeriodInDays] Soft delete retention period in days
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  /// [vaultId] ID of the vault which protects this item
  /// [virtualMachineId] Fully qualified ARM ID of the virtual machine represented by this item.
  /// [workloadType] Type of workload this item represents.
  const AzureIaaSVMProtectedItemResponse({
    required this.backupManagementType,
    this.backupSetName,
    this.containerName,
    this.createMode,
    this.deferredDeleteTimeInUTC,
    this.deferredDeleteTimeRemaining,
    this.extendedInfo,
    this.extendedProperties,
    required this.friendlyName,
    this.healthDetails,
    required this.healthStatus,
    this.isArchiveEnabled,
    this.isDeferredDeleteScheduleUpcoming,
    this.isRehydrate,
    this.isScheduledForDeferredDelete,
    this.kpisHealths,
    this.lastBackupStatus,
    required this.lastBackupTime,
    this.lastRecoveryPoint,
    this.policyId,
    this.policyName,
    required this.protectedItemDataId,
    required this.protectedItemType,
    this.protectionState,
    this.protectionStatus,
    this.resourceGuardOperationRequests,
    this.softDeleteRetentionPeriodInDays,
    this.sourceResourceId,
    required this.vaultId,
    required this.virtualMachineId,
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
      'extendedInfo': ?pulumi.Input.mapOptionalInputValue<AzureIaaSVMProtectedItemExtendedInfoResponse, Map<String, dynamic>>(extendedInfo, (value) => value.toMap()),
      'extendedProperties': ?pulumi.Input.mapOptionalInputValue<ExtendedPropertiesResponse, Map<String, dynamic>>(extendedProperties, (value) => value.toMap()),
      'friendlyName': friendlyName,
      'healthDetails': ?pulumi.Input.mapOptionalInputValue<List<AzureIaaSVMHealthDetailsResponse>, List<Map<String, dynamic>>>(healthDetails, (value) => pulumi.Input.encodeList<AzureIaaSVMHealthDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthStatus': healthStatus,
      'isArchiveEnabled': ?isArchiveEnabled,
      'isDeferredDeleteScheduleUpcoming': ?isDeferredDeleteScheduleUpcoming,
      'isRehydrate': ?isRehydrate,
      'isScheduledForDeferredDelete': ?isScheduledForDeferredDelete,
      'kpisHealths': ?pulumi.Input.mapOptionalInputValue<Map<String, KPIResourceHealthDetailsResponse>, Map<String, Map<String, dynamic>>>(kpisHealths, (value) => pulumi.Input.encodeMapValues<KPIResourceHealthDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastBackupStatus': ?lastBackupStatus,
      'lastBackupTime': lastBackupTime,
      'lastRecoveryPoint': ?lastRecoveryPoint,
      'policyId': ?policyId,
      'policyName': ?policyName,
      'protectedItemDataId': protectedItemDataId,
      'protectedItemType': protectedItemType,
      'protectionState': ?protectionState,
      'protectionStatus': ?protectionStatus,
      'resourceGuardOperationRequests': ?resourceGuardOperationRequests,
      'softDeleteRetentionPeriodInDays': ?softDeleteRetentionPeriodInDays,
      'sourceResourceId': ?sourceResourceId,
      'vaultId': vaultId,
      'virtualMachineId': virtualMachineId,
      'workloadType': workloadType,
    };
  }

  factory AzureIaaSVMProtectedItemResponse.fromMap(Map<String, dynamic> map) {
    return AzureIaaSVMProtectedItemResponse(
      backupManagementType: pulumi.Input.fromValue(map['backupManagementType'] as String),
      backupSetName: (() { final guardedValue = map['backupSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerName: (() { final guardedValue = map['containerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deferredDeleteTimeInUTC: (() { final guardedValue = map['deferredDeleteTimeInUTC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deferredDeleteTimeRemaining: (() { final guardedValue = map['deferredDeleteTimeRemaining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedInfo: (() { final guardedValue = map['extendedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureIaaSVMProtectedItemExtendedInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedProperties: (() { final guardedValue = map['extendedProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      friendlyName: pulumi.Input.fromValue(map['friendlyName'] as String),
      healthDetails: (() { final guardedValue = map['healthDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureIaaSVMHealthDetailsResponse>(guardedValue, (value) => AzureIaaSVMHealthDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      healthStatus: pulumi.Input.fromValue(map['healthStatus'] as String),
      isArchiveEnabled: (() { final guardedValue = map['isArchiveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDeferredDeleteScheduleUpcoming: (() { final guardedValue = map['isDeferredDeleteScheduleUpcoming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isRehydrate: (() { final guardedValue = map['isRehydrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isScheduledForDeferredDelete: (() { final guardedValue = map['isScheduledForDeferredDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kpisHealths: (() { final guardedValue = map['kpisHealths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<KPIResourceHealthDetailsResponse>(guardedValue, (value) => KPIResourceHealthDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastBackupStatus: (() { final guardedValue = map['lastBackupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastBackupTime: pulumi.Input.fromValue(map['lastBackupTime'] as String),
      lastRecoveryPoint: (() { final guardedValue = map['lastRecoveryPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectedItemDataId: pulumi.Input.fromValue(map['protectedItemDataId'] as String),
      protectedItemType: pulumi.Input.fromValue(map['protectedItemType'] as String),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionStatus: (() { final guardedValue = map['protectionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGuardOperationRequests: (() { final guardedValue = map['resourceGuardOperationRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      softDeleteRetentionPeriodInDays: (() { final guardedValue = map['softDeleteRetentionPeriodInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultId: pulumi.Input.fromValue(map['vaultId'] as String),
      virtualMachineId: pulumi.Input.fromValue(map['virtualMachineId'] as String),
      workloadType: pulumi.Input.fromValue(map['workloadType'] as String),
    );
  }
}
