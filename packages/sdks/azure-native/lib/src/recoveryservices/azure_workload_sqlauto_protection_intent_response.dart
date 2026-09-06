// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Workload SQL Auto Protection intent item.
class AzureWorkloadSQLAutoProtectionIntentResponse {
  /// Type of backup management for the backed up item.
  final pulumi.Input<String?>? backupManagementType;
  /// ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  final pulumi.Input<String?>? itemId;
  /// ID of the backup policy with which this item is backed up.
  final pulumi.Input<String?>? policyId;
  /// backup protectionIntent type.
  /// Expected value is 'AzureWorkloadSQLAutoProtectionIntent'.
  final pulumi.Input<String> protectionIntentItemType;
  /// Backup state of this backup item.
  final pulumi.Input<String?>? protectionState;
  /// ARM ID of the resource to be backed up.
  final pulumi.Input<String?>? sourceResourceId;
  /// Workload item type of the item for which intent is to be set
  final pulumi.Input<String?>? workloadItemType;

  /// Creates a new [AzureWorkloadSQLAutoProtectionIntentResponse].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [itemId] ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [protectionIntentItemType] backup protectionIntent type.
  /// [protectionState] Backup state of this backup item.
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  /// [workloadItemType] Workload item type of the item for which intent is to be set
  const AzureWorkloadSQLAutoProtectionIntentResponse({
    this.backupManagementType,
    this.itemId,
    this.policyId,
    required this.protectionIntentItemType,
    this.protectionState,
    this.sourceResourceId,
    this.workloadItemType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'itemId': ?itemId,
      'policyId': ?policyId,
      'protectionIntentItemType': protectionIntentItemType,
      'protectionState': ?protectionState,
      'sourceResourceId': ?sourceResourceId,
      'workloadItemType': ?workloadItemType,
    };
  }

  factory AzureWorkloadSQLAutoProtectionIntentResponse.fromMap(Map<String, dynamic> map) {
    return AzureWorkloadSQLAutoProtectionIntentResponse(
      backupManagementType: (() { final guardedValue = map['backupManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      itemId: (() { final guardedValue = map['itemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionIntentItemType: pulumi.Input.fromValue(map['protectionIntentItemType'] as String),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workloadItemType: (() { final guardedValue = map['workloadItemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
