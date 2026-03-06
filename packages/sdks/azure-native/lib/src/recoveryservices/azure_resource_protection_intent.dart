// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IaaS VM specific backup protection intent item.
class AzureResourceProtectionIntent {
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

  /// Creates a new [AzureResourceProtectionIntent].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [friendlyName] Friendly name of the VM represented by this backup item.
  /// [itemId] ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [protectionIntentItemType] backup protectionIntent type.
  /// [protectionState] Backup state of this backup item.
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  const AzureResourceProtectionIntent({
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

  factory AzureResourceProtectionIntent.fromMap(Map<String, dynamic> map) {
    return AzureResourceProtectionIntent(
      backupManagementType: (() { final guardedValue = map['backupManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      itemId: (() { final guardedValue = map['itemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionIntentItemType: pulumi.Input.fromValue(map['protectionIntentItemType'] as String),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

