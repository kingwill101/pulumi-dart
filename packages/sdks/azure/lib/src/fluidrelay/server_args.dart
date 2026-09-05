// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_customer_managed_key.dart';
import 'server_identity.dart';

/// {@template pulumi_fluidrelay_server_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_fluidrelay_server_server_args_doc}
class ServerArgs {
  /// A `customerManagedKey` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ServerCustomerManagedKey?>? customerManagedKey;
  /// An `identity` block as defined below.
  final pulumi.Input<ServerIdentity?>? identity;
  /// The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String?>? storageSku;
  /// A mapping of tags which should be assigned to the Fluid Relay Server.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ServerArgs].
  /// [customerManagedKey] A `customerManagedKey` block as defined below. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  /// [name] The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created.
  /// [resourceGroupName] The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  /// [storageSku] Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created.
  /// [tags] A mapping of tags which should be assigned to the Fluid Relay Server.
  const ServerArgs({
    this.customerManagedKey,
    this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.storageSku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedKey': ?pulumi.Input.mapOptionalInputValue<ServerCustomerManagedKey, Map<String, dynamic>>(customerManagedKey, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ServerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'storageSku': ?storageSku,
      'tags': ?tags,
    };
  }

  factory ServerArgs.fromMap(Map<String, dynamic> map) {
    return ServerArgs(
      customerManagedKey: (() { final guardedValue = map['customerManagedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerCustomerManagedKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageSku: (() { final guardedValue = map['storageSku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
