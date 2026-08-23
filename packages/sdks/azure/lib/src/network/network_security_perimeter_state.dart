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
  const NetworkSecurityPerimeterState({
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
