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
    pulumi.Output<String>? accountName,
    pulumi.Output<Identity>? identity,
    pulumi.Output<IngestionStorage>? ingestionStorage,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managedEventHubState,
    pulumi.Output<String>? managedResourceGroupName,
    pulumi.Output<String>? managedResourcesPublicNetworkAccess,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<AccountSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tenantEndpointState,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      ingestionStorage = pulumi.Input.asOptionalInput<IngestionStorage>(ingestionStorage),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedEventHubState = pulumi.Input.asOptionalInput<String>(managedEventHubState),
      managedResourceGroupName = pulumi.Input.asOptionalInput<String>(managedResourceGroupName),
      managedResourcesPublicNetworkAccess = pulumi.Input.asOptionalInput<String>(managedResourcesPublicNetworkAccess),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<AccountSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantEndpointState = pulumi.Input.asOptionalInput<String>(tenantEndpointState);

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
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      ingestionStorage: map['ingestionStorage'] == null ? null : pulumi.Output.create<IngestionStorage>(IngestionStorage.fromMap((map['ingestionStorage'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managedEventHubState: map['managedEventHubState'] == null ? null : pulumi.Output.create<String>(map['managedEventHubState'] as String),
      managedResourceGroupName: map['managedResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['managedResourceGroupName'] as String),
      managedResourcesPublicNetworkAccess: map['managedResourcesPublicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['managedResourcesPublicNetworkAccess'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<AccountSku>(AccountSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantEndpointState: map['tenantEndpointState'] == null ? null : pulumi.Output.create<String>(map['tenantEndpointState'] as String),
    );
  }
}

