// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_sku.dart';

/// Input properties used for looking up and filtering Capacity resources.
class CapacityState {
  /// An array of administrator user identities. The member must be an Entra user or a service principal.
  ///
  /// > **Note:** If the member is an Entra user, use user principal name (UPN) format. If the user is a service principal, use object ID.
  final pulumi.Input<List<String>>? administrationMembers;
  /// The supported Azure location where the Fabric Capacity exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for the Fabric Capacity. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which to create the Fabric Capacity. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `sku` block as defined below.
  final pulumi.Input<CapacitySku>? sku;
  /// A mapping of tags to assign to the Fabric Capacity.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CapacityState].
  /// [administrationMembers] An array of administrator user identities. The member must be an Entra user or a service principal.
  /// [location] The supported Azure location where the Fabric Capacity exists. Changing this forces a new resource to be created.
  /// [name] The name which should be used for the Fabric Capacity. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which to create the Fabric Capacity. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the Fabric Capacity.
  CapacityState({
    pulumi.Output<List<String>>? administrationMembers,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<CapacitySku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      administrationMembers = pulumi.Input.asOptionalInput<List<String>>(administrationMembers),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<CapacitySku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrationMembers': ?administrationMembers,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<CapacitySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory CapacityState.fromMap(Map<String, dynamic> map) {
    return CapacityState(
      administrationMembers: map['administrationMembers'] == null ? null : pulumi.Output.create<List<String>>((map['administrationMembers'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<CapacitySku>(CapacitySku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

