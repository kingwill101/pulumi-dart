// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceAnchor resources.
class ResourceAnchorState {
  /// Oracle Cloud Infrastructure compartment [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) which was created or linked by customer with Resource Anchor.
  final pulumi.Input<String>? linkedCompartmentId;
  /// The Azure Region where the Oracle Resource Anchor exists.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Oracle Resource Anchor. Changing this forces a new Oracle Resource Anchor to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Oracle Resource Anchor should exist. Changing this forces a new Oracle Resource Anchor to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Oracle Resource Anchor.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceAnchorState].
  /// [linkedCompartmentId] Oracle Cloud Infrastructure compartment [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) which was created or linked by customer with Resource Anchor.
  /// [location] The Azure Region where the Oracle Resource Anchor exists.
  /// [name] The name which should be used for this Oracle Resource Anchor. Changing this forces a new Oracle Resource Anchor to be created.
  /// [resourceGroupName] The name of the Resource Group where the Oracle Resource Anchor should exist. Changing this forces a new Oracle Resource Anchor to be created.
  /// [tags] A mapping of tags which should be assigned to the Oracle Resource Anchor.
  ResourceAnchorState({
    pulumi.Output<String>? linkedCompartmentId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      linkedCompartmentId = pulumi.Input.asOptionalInput<String>(linkedCompartmentId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedCompartmentId': ?linkedCompartmentId,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResourceAnchorState.fromMap(Map<String, dynamic> map) {
    return ResourceAnchorState(
      linkedCompartmentId: map['linkedCompartmentId'] == null ? null : pulumi.Output.create<String>(map['linkedCompartmentId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

