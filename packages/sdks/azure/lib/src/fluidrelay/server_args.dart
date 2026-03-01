// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_customer_managed_key.dart';
import 'server_identity.dart';

/// {@template pulumi_fluidrelay_server_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_fluidrelay_server_server_args_doc}
class ServerArgs {
  /// A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ServerCustomerManagedKey>? customerManagedKey;
  /// An `identity` block as defined below.
  final pulumi.Input<ServerIdentity>? identity;
  /// The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created.
  final pulumi.Input<String>? storageSku;
  /// A mapping of tags which should be assigned to the Fluid Relay Server.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServerArgs].
  /// [customerManagedKey] A `customer_managed_key` block as defined below. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  /// [name] The name which should be used for this Fluid Relay Server. Changing this forces a new Fluid Relay Server to be created.
  /// [resourceGroupName] The name of the Resource Group where the Fluid Relay Server should exist. Changing this forces a new Fluid Relay Server to be created.
  /// [storageSku] Sku of the storage associated with the resource, Possible values are `standard` and `basic`. Changing this forces a new Fluid Relay Server to be created.
  /// [tags] A mapping of tags which should be assigned to the Fluid Relay Server.
  ServerArgs({
    pulumi.Output<ServerCustomerManagedKey>? customerManagedKey,
    pulumi.Output<ServerIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? storageSku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customerManagedKey = pulumi.Input.asOptionalInput<ServerCustomerManagedKey>(customerManagedKey),
      identity = pulumi.Input.asOptionalInput<ServerIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageSku = pulumi.Input.asOptionalInput<String>(storageSku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      customerManagedKey: map['customerManagedKey'] == null ? null : pulumi.Output.create<ServerCustomerManagedKey>(ServerCustomerManagedKey.fromMap((map['customerManagedKey'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServerIdentity>(ServerIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageSku: map['storageSku'] == null ? null : pulumi.Output.create<String>(map['storageSku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

