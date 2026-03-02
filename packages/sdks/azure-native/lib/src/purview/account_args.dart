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
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  final pulumi.Input<String>? managedEventHubState;
  /// Gets or sets the managed resource group name
  final pulumi.Input<String>? managedResourceGroupName;
  /// Gets or sets the public network access for managed resources.
  final pulumi.Input<String>? managedResourcesPublicNetworkAccess;
  /// Gets or sets the public network access.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the Sku.
  final pulumi.Input<AccountSku>? sku;
  /// Tags on the azure resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Gets or sets the state of tenant endpoint.
  final pulumi.Input<String>? tenantEndpointState;

  /// Creates a new [AccountArgs].
  /// [accountName] The name of the account.
  /// [identity] The Managed Identity of the resource
  /// [ingestionStorage] Ingestion Storage Account Info
  /// [location] Gets or sets the location.
  /// [managedEventHubState] Gets or sets the state of managed eventhub. If enabled managed eventhub will be created, if disabled the managed eventhub will be removed.
  /// [managedResourceGroupName] Gets or sets the managed resource group name
  /// [managedResourcesPublicNetworkAccess] Gets or sets the public network access for managed resources.
  /// [publicNetworkAccess] Gets or sets the public network access.
  /// [resourceGroupName] The resource group name.
  /// [sku] Gets or sets the Sku.
  /// [tags] Tags on the azure resource.
  /// [tenantEndpointState] Gets or sets the state of tenant endpoint.
  AccountArgs({
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
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      ingestionStorage: map['ingestionStorage'] == null ? null : (IngestionStorage.fromMap((map['ingestionStorage'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managedEventHubState: map['managedEventHubState'] == null ? null : (map['managedEventHubState'] as String).input(),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : (map['managedResourceGroupName'] as String).input(),
      managedResourcesPublicNetworkAccess: map['managedResourcesPublicNetworkAccess'] == null ? null : (map['managedResourcesPublicNetworkAccess'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (AccountSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tenantEndpointState: map['tenantEndpointState'] == null ? null : (map['tenantEndpointState'] as String).input(),
    );
  }
}

