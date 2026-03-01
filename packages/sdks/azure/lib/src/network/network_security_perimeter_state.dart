// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkSecurityPerimeter resources.
class NetworkSecurityPerimeterState {
  /// The Azure Region where the Network Security Perimeter should exist. Changing this forces a new Network Security Perimeter to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Network Security Perimeter. Changing this forces a new Network Security Perimeter to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Network Security Perimeter should exist.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Network Security Perimeter.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkSecurityPerimeterState].
  /// [location] The Azure Region where the Network Security Perimeter should exist. Changing this forces a new Network Security Perimeter to be created.
  /// [name] The name which should be used for this Network Security Perimeter. Changing this forces a new Network Security Perimeter to be created.
  /// [resourceGroupName] The name of the Resource Group where the Network Security Perimeter should exist.
  /// [tags] A mapping of tags which should be assigned to the Network Security Perimeter.
  NetworkSecurityPerimeterState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkSecurityPerimeterState.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

