// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Recovery Services Vault specific protection intent item.
class AzureRecoveryServiceVaultProtectionIntent {
  /// Type of backup management for the backed up item.
  final pulumi.Input<String>? backupManagementType;

  /// ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  final pulumi.Input<String>? itemId;

  /// ID of the backup policy with which this item is backed up.
  final pulumi.Input<String>? policyId;

  /// backup protectionIntent type.
  /// Expected value is 'RecoveryServiceVaultItem'.
  final pulumi.Input<String> protectionIntentItemType;

  /// Backup state of this backup item.
  final pulumi.Input<String>? protectionState;

  /// ARM ID of the resource to be backed up.
  final pulumi.Input<String>? sourceResourceId;

  /// Creates a new [AzureRecoveryServiceVaultProtectionIntent].
  /// [backupManagementType] Type of backup management for the backed up item.
  /// [itemId] ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId
  /// [policyId] ID of the backup policy with which this item is backed up.
  /// [protectionIntentItemType] backup protectionIntent type.
  /// [protectionState] Backup state of this backup item.
  /// [sourceResourceId] ARM ID of the resource to be backed up.
  AzureRecoveryServiceVaultProtectionIntent({
    this.backupManagementType,
    this.itemId,
    this.policyId,
    required this.protectionIntentItemType,
    this.protectionState,
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'itemId': ?itemId,
      'policyId': ?policyId,
      'protectionIntentItemType': protectionIntentItemType,
      'protectionState': ?protectionState,
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory AzureRecoveryServiceVaultProtectionIntent.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureRecoveryServiceVaultProtectionIntent(
      backupManagementType: (() {
        final guardedValue = map['backupManagementType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      itemId: (() {
        final guardedValue = map['itemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectionIntentItemType: pulumi.Input.fromValue(
        map['protectionIntentItemType'] as String,
      ),
      protectionState: (() {
        final guardedValue = map['protectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceResourceId: (() {
        final guardedValue = map['sourceResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
