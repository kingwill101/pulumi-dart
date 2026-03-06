// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets the resource identifiers of the managed resources.
class AccountPropertiesResponseManagedResources {
  /// Gets the managed event hub namespace resource identifier.
  final pulumi.Input<String> eventHubNamespace;
  /// Gets the managed resource group resource identifier. This resource group will host resource dependencies for the account.
  final pulumi.Input<String> resourceGroup;
  /// Gets the managed storage account resource identifier.
  final pulumi.Input<String> storageAccount;

  /// Creates a new [AccountPropertiesResponseManagedResources].
  /// [eventHubNamespace] Gets the managed event hub namespace resource identifier.
  /// [resourceGroup] Gets the managed resource group resource identifier. This resource group will host resource dependencies for the account.
  /// [storageAccount] Gets the managed storage account resource identifier.
  const AccountPropertiesResponseManagedResources({
    required this.eventHubNamespace,
    required this.resourceGroup,
    required this.storageAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubNamespace': eventHubNamespace,
      'resourceGroup': resourceGroup,
      'storageAccount': storageAccount,
    };
  }

  factory AccountPropertiesResponseManagedResources.fromMap(Map<String, dynamic> map) {
    return AccountPropertiesResponseManagedResources(
      eventHubNamespace: pulumi.Input.fromValue(map['eventHubNamespace'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      storageAccount: pulumi.Input.fromValue(map['storageAccount'] as String),
    );
  }
}

