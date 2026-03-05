// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicenetworking_get_frontends_interface_args_doc}
/// Arguments for getFrontendsInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_get_frontends_interface_args_doc}
class GetFrontendsInterfaceArgs {
  /// Frontends
  final pulumi.Input<String> frontendName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// traffic controller name for path
  final pulumi.Input<String> trafficControllerName;

  /// Creates a new [GetFrontendsInterfaceArgs].
  /// [frontendName] Frontends
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [trafficControllerName] traffic controller name for path
  GetFrontendsInterfaceArgs({
    required this.frontendName,
    required this.resourceGroupName,
    required this.trafficControllerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendName': frontendName,
      'resourceGroupName': resourceGroupName,
      'trafficControllerName': trafficControllerName,
    };
  }

  factory GetFrontendsInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetFrontendsInterfaceArgs(
      frontendName: pulumi.Input.fromValue(map['frontendName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      trafficControllerName: pulumi.Input.fromValue(map['trafficControllerName'] as String),
    );
  }
}

