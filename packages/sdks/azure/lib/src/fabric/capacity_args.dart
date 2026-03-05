// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_sku.dart';

/// {@template pulumi_fabric_capacity_capacity_args_doc}
/// The set of arguments for Capacity.
/// {@endtemplate}
/// {@macro pulumi_fabric_capacity_capacity_args_doc}
class CapacityArgs {
  /// An array of administrator user identities. The member must be an Entra user or a service principal.
  ///
  /// &gt; **Note:** If the member is an Entra user, use user principal name (UPN) format. If the user is a service principal, use object ID.
  final pulumi.Input<List<String>>? administrationMembers;
  /// The supported Azure location where the Fabric Capacity exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for the Fabric Capacity. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which to create the Fabric Capacity. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `sku` block as defined below.
  final pulumi.Input<CapacitySku> sku;
  /// A mapping of tags to assign to the Fabric Capacity.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CapacityArgs].
  /// [administrationMembers] An array of administrator user identities. The member must be an Entra user or a service principal.
  /// [location] The supported Azure location where the Fabric Capacity exists. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the Fabric Capacity. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which to create the Fabric Capacity. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the Fabric Capacity.
  CapacityArgs({
    this.administrationMembers,
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrationMembers': ?administrationMembers,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<CapacitySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory CapacityArgs.fromMap(Map<String, dynamic> map) {
    return CapacityArgs(
      administrationMembers: (() { final guardedValue = map['administrationMembers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(CapacitySku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

