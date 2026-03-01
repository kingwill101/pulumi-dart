// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_customer_managed_key.dart';
import 'server_identity.dart';

/// Input properties used for looking up and filtering Server resources.
class ServerState {
  /// A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ServerCustomerManagedKey>? customerManagedKey;
  /// The Fluid tenantId for this server.
  final pulumi.Input<String>? frsTenantId;
  /// An `identity` block as defined below.
  final pulumi.Input<ServerIdentity>? identity;
  /// The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String>? name;
  /// An array of the Fluid Relay Orderer endpoints. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility).
  final pulumi.Input<List<String>>? ordererEndpoints;
  /// The primary key for this server.
  final pulumi.Input<String>? primaryKey;
  /// The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The secondary key for this server.
  final pulumi.Input<String>? secondaryKey;
  /// An array of service endpoints for this Fluid Relay Server.
  final pulumi.Input<List<String>>? serviceEndpoints;
  /// An array of storage endpoints for this Fluid Relay Server. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility).
  final pulumi.Input<List<String>>? storageEndpoints;
  /// Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String>? storageSku;
  /// A mapping of tags which should be assigned to the Fluid Relay Server.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerState].
  /// [customerManagedKey] A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  /// [frsTenantId] The Fluid tenantId for this server.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  /// [name] The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created.
  /// [ordererEndpoints] An array of the Fluid Relay Orderer endpoints. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility).
  /// [primaryKey] The primary key for this server.
  /// [resourceGroupName] The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  /// [secondaryKey] The secondary key for this server.
  /// [serviceEndpoints] An array of service endpoints for this Fluid Relay Server.
  /// [storageEndpoints] An array of storage endpoints for this Fluid Relay Server. This will be deprecated in future version of fluid relay server and will always be empty, [more details](https://learn.microsoft.com/en-us/azure/azure-fluid-relay/concepts/version-compatibility).
  /// [storageSku] Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created.
  /// [tags] A mapping of tags which should be assigned to the Fluid Relay Server.
  ServerState({
    pulumi.Output<ServerCustomerManagedKey>? customerManagedKey,
    pulumi.Output<String>? frsTenantId,
    pulumi.Output<ServerIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? ordererEndpoints,
    pulumi.Output<String>? primaryKey,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryKey,
    pulumi.Output<List<String>>? serviceEndpoints,
    pulumi.Output<List<String>>? storageEndpoints,
    pulumi.Output<String>? storageSku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customerManagedKey = pulumi.Input.asOptionalInput<ServerCustomerManagedKey>(customerManagedKey),
      frsTenantId = pulumi.Input.asOptionalInput<String>(frsTenantId),
      identity = pulumi.Input.asOptionalInput<ServerIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      ordererEndpoints = pulumi.Input.asOptionalInput<List<String>>(ordererEndpoints),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      serviceEndpoints = pulumi.Input.asOptionalInput<List<String>>(serviceEndpoints),
      storageEndpoints = pulumi.Input.asOptionalInput<List<String>>(storageEndpoints),
      storageSku = pulumi.Input.asOptionalInput<String>(storageSku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<ServerCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'frsTenantId': ?frsTenantId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ServerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'ordererEndpoints': ?ordererEndpoints,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryKey': ?secondaryKey,
      'serviceEndpoints': ?serviceEndpoints,
      'storageEndpoints': ?storageEndpoints,
      'storageSku': ?storageSku,
      'tags': ?tags,
    };
  }

  factory ServerState.fromMap(Map<String, dynamic> map) {
    return ServerState(
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<ServerCustomerManagedKey>(ServerCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())),
      frsTenantId: map['frsTenantId'] == null ? null : pulumi.Output.create<String>(map['frsTenantId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServerIdentity>(ServerIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ordererEndpoints: map['ordererEndpoints'] == null ? null : pulumi.Output.create<List<String>>((map['ordererEndpoints'] as List).cast<String>()),
      primaryKey: map['primaryKey'] == null ? null : pulumi.Output.create<String>(map['primaryKey'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryKey: map['secondaryKey'] == null ? null : pulumi.Output.create<String>(map['secondaryKey'] as String),
      serviceEndpoints: map['serviceEndpoints'] == null ? null : pulumi.Output.create<List<String>>((map['serviceEndpoints'] as List).cast<String>()),
      storageEndpoints: map['storageEndpoints'] == null ? null : pulumi.Output.create<List<String>>((map['storageEndpoints'] as List).cast<String>()),
      storageSku: map['storageSku'] == null ? null : pulumi.Output.create<String>(map['storageSku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

