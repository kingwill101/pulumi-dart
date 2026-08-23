// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_sku.dart';
import 'identity.dart';
import 'ingestion_storage.dart';

/// {@template pulumi_purview_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_purview_account_args_doc}
class AccountArgs {
  /// The name of the account.
  final pulumi.Input<String>? accountName;
  /// The Managed Identity of the resource
  final pulumi.Input<Identity>? identity;
  /// Ingestion Storage Account Info
  final pulumi.Input<IngestionStorage>? ingestionStorage;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  final pulumi.Input<String>? managedEventHubState;
  /// Gets or sets the managed resource group name
  final pulumi.Input<String>? managedResourceGroupName;
  /// Gets or sets the public network access for managed resources.
  final pulumi.Input<String>? managedResourcesPublicNetworkAccess;
  /// Gets or sets the public network access.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the Sku.
  final pulumi.Input<AccountSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the state of tenant endpoint.
  final pulumi.Input<String>? tenantEndpointState;

  /// Creates a new [AccountArgs].
  /// [accountName] The name of the account.
  /// [identity] The Managed Identity of the resource
  /// [ingestionStorage] Ingestion Storage Account Info
  /// [location] The geo-location where the resource lives
  /// [managedEventHubState] Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  /// [managedResourceGroupName] Gets or sets the managed resource group name
  /// [managedResourcesPublicNetworkAccess] Gets or sets the public network access for managed resources.
  /// [publicNetworkAccess] Gets or sets the public network access.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Gets or sets the Sku.
  /// [tags] Resource tags.
  /// [tenantEndpointState] Gets or sets the state of tenant endpoint.
  const AccountArgs({
    this.accountName,
    this.identity,
    this.ingestionStorage,
    this.location,
    this.managedEventHubState,
    this.managedResourceGroupName,
    this.managedResourcesPublicNetworkAccess,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.tenantEndpointState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ingestionStorage': ?pulumi.Input.mapOptionalInputValue<IngestionStorage, Map<String, dynamic>>(ingestionStorage, (value) => value.toMap()),
      'location': ?location,
      'managedEventHubState': ?managedEventHubState,
      'managedResourceGroupName': ?managedResourceGroupName,
      'managedResourcesPublicNetworkAccess': ?managedResourcesPublicNetworkAccess,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<AccountSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'tenantEndpointState': ?tenantEndpointState,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ingestionStorage: (() { final guardedValue = map['ingestionStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngestionStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedEventHubState: (() { final guardedValue = map['managedEventHubState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourcesPublicNetworkAccess: (() { final guardedValue = map['managedResourcesPublicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantEndpointState: (() { final guardedValue = map['tenantEndpointState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
