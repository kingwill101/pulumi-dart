// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateLink resources.
class PrivateLinkState {
  /// The Azure Region where the Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Resource Management Private Link. Changing this forces a new Resource Management Private Link to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group within which this Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [PrivateLinkState].
  /// [location] The Azure Region where the Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created.
  /// [name] Specifies the name of this Resource Management Private Link. Changing this forces a new Resource Management Private Link to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group within which this Resource Management Private Link should exist. Changing this forces a new Resource Management Private Link to be created.
  PrivateLinkState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory PrivateLinkState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

