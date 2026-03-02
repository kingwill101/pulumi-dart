// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IaaS VM specific backup protection intent item.
class AzureResourceProtectionIntentResponse {
  /// Type of backup management for the backed up item.
  final pulumi.Input<String>? backupManagementType;
  /// Friendly name of the VM represented by this backup item.
  final pulumi.Input<String>? friendlyName;
  /// ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  final pulumi.Input<String>? itemId;
  /// ID of the backup policy with which this item is backed up.
  final pulumi.Input<String>? policyId;
  /// backup protectionIntent type.
  /// Expected value is 'AzureResourceItem'.
  final pulumi.Input<String> protectionIntentItemType;
  /// Backup state of this backup item.
  final pulumi.Input<String>? protectionState;
  /// ARM ID of the resource to be backed up.
  final pulumi.Input<String>? sourceResourceId;

  /// Creates a new [AzureResourceProtectionIntentResponse].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [friendlyName] Friendly name of the VM represented by this backup item.
  /// [itemId] ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [protectionIntentItemType] backup protectionIntent type.
  /// [protectionState] Backup state of this backup item.
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  AzureResourceProtectionIntentResponse({
    this.backupManagementType,
    this.friendlyName,
    this.itemId,
    this.policyId,
    required this.protectionIntentItemType,
    this.protectionState,
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'friendlyName': ?friendlyName,
      'itemId': ?itemId,
      'policyId': ?policyId,
      'protectionIntentItemType': protectionIntentItemType,
      'protectionState': ?protectionState,
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory AzureResourceProtectionIntentResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceProtectionIntentResponse(
      backupManagementType: map['backupManagementType'] == null ? null : (map['backupManagementType']! as String).input(),
      friendlyName: map['friendlyName'] == null ? null : (map['friendlyName']! as String).input(),
      itemId: map['itemId'] == null ? null : (map['itemId']! as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId']! as String).input(),
      protectionIntentItemType: (map['protectionIntentItemType'] as String).input(),
      protectionState: map['protectionState'] == null ? null : (map['protectionState']! as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId']! as String).input(),
    );
  }
}

