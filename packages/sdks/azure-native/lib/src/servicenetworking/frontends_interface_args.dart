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
    pulumi.Output<String>? frontendName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> trafficControllerName,
  }) :
      frontendName = pulumi.Input.asOptionalInput<String>(frontendName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficControllerName = pulumi.Input.asInput<String>(trafficControllerName);

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
      frontendName: map['frontendName'] == null ? null : pulumi.Output.create<String>(map['frontendName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficControllerName: pulumi.Output.create<String>(map['trafficControllerName'] as String),
    );
  }
}

