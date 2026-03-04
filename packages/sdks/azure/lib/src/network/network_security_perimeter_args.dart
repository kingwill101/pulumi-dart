// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_security_perimeter_network_security_perimeter_args_doc}
/// The set of arguments for NetworkSecurityPerimeter.
/// {@endtemplate}
/// {@macro pulumi_network_network_security_perimeter_network_security_perimeter_args_doc}
class NetworkSecurityPerimeterArgs {
  /// The Azure Region where the Network Security Perimeter should exist. Changing this forces a new Network Security Perimeter to be created.
  final pulumi.Input<String>? location;

  /// The name which should be used for this Network Security Perimeter. Changing this forces a new Network Security Perimeter to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group where the Network Security Perimeter should exist.
  final pulumi.Input<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the Network Security Perimeter.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkSecurityPerimeterArgs].
  /// [location] The Azure Region where the Network Security Perimeter should exist. Changing this forces a new Network Security Perimeter to be created.
  /// [name] The name which should be used for this Network Security Perimeter. Changing this forces a new Network Security Perimeter to be created.
  /// [resourceGroupName] The name of the Resource Group where the Network Security Perimeter should exist.
  /// [tags] A mapping of tags which should be assigned to the Network Security Perimeter.
  NetworkSecurityPerimeterArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkSecurityPerimeterArgs.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterArgs(
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
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
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
