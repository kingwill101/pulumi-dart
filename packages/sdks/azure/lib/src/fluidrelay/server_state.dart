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
    this.customerManagedKey,
    this.frsTenantId,
    this.identity,
    this.location,
    this.name,
    this.ordererEndpoints,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryKey,
    this.serviceEndpoints,
    this.storageEndpoints,
    this.storageSku,
    this.tags,
  });

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
      customerManagedKey: map['customerManagedKey'] == null ? null : (ServerCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())).input(),
      frsTenantId: map['frsTenantId'] == null ? null : (map['frsTenantId'] as String).input(),
      identity: map['identity'] == null ? null : (ServerIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ordererEndpoints: map['ordererEndpoints'] == null ? null : ((map['ordererEndpoints'] as List).cast<String>()).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      secondaryKey: map['secondaryKey'] == null ? null : (map['secondaryKey'] as String).input(),
      serviceEndpoints: map['serviceEndpoints'] == null ? null : ((map['serviceEndpoints'] as List).cast<String>()).input(),
      storageEndpoints: map['storageEndpoints'] == null ? null : ((map['storageEndpoints'] as List).cast<String>()).input(),
      storageSku: map['storageSku'] == null ? null : (map['storageSku'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

