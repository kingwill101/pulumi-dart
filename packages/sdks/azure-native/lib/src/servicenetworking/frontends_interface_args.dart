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
      frontendName: map['frontendName'] == null ? null : (map['frontendName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trafficControllerName: (map['trafficControllerName'] as String).input(),
    );
  }
}

