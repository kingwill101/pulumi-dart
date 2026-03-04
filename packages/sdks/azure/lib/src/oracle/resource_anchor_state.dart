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
    this.linkedCompartmentId,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

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
      linkedCompartmentId: (() {
        final guardedValue = map['linkedCompartmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
