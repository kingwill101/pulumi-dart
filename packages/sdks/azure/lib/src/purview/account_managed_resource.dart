// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountManagedResource {
  /// The ID of the managed event hub namespace.
  final pulumi.Input<String>? eventHubNamespaceId;
  /// The ID of the managed resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the managed storage account.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [AccountManagedResource].
  /// [eventHubNamespaceId] The ID of the managed event hub namespace.
  /// [resourceGroupId] The ID of the managed resource group.
  /// [storageAccountId] The ID of the managed storage account.
  const AccountManagedResource({
    this.eventHubNamespaceId,
    this.resourceGroupId,
    this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubNamespaceId': ?eventHubNamespaceId,
      'resourceGroupId': ?resourceGroupId,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory AccountManagedResource.fromMap(Map<String, dynamic> map) {
    return AccountManagedResource(
      eventHubNamespaceId: (() { final guardedValue = map['eventHubNamespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

