// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_frontends_interface_args_doc}
/// The set of arguments for FrontendsInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_frontends_interface_args_doc}
class FrontendsInterfaceArgs {
  /// Frontends
  final pulumi.Input<String>? frontendName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// traffic controller name for path
  final pulumi.Input<String> trafficControllerName;

  /// Creates a new [FrontendsInterfaceArgs].
  /// [frontendName] Frontends
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [trafficControllerName] traffic controller name for path
  FrontendsInterfaceArgs({
    this.frontendName,
    this.location,
    required this.resourceGroupName,
    this.tags,
    required this.trafficControllerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendName': ?frontendName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'trafficControllerName': trafficControllerName,
    };
  }

  factory FrontendsInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return FrontendsInterfaceArgs(
      frontendName: (() { final guardedValue = map['frontendName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficControllerName: pulumi.Input.fromValue(map['trafficControllerName'] as String),
    );
  }
}

