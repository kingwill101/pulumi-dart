// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_configurations.dart';

/// {@template pulumi_servicenetworking_traffic_controller_interface_args_doc}
/// The set of arguments for TrafficControllerInterface.
/// {@endtemplate}
/// {@macro pulumi_servicenetworking_traffic_controller_interface_args_doc}
class TrafficControllerInterfaceArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Security Policy Configuration
  final pulumi.Input<SecurityPolicyConfigurations>? securityPolicyConfigurations;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// traffic controller name for path
  final pulumi.Input<String>? trafficControllerName;

  /// Creates a new [TrafficControllerInterfaceArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securityPolicyConfigurations] Security Policy Configuration
  /// [tags] Resource tags.
  /// [trafficControllerName] traffic controller name for path
  TrafficControllerInterfaceArgs({
    this.location,
    required this.resourceGroupName,
    this.securityPolicyConfigurations,
    this.tags,
    this.trafficControllerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'securityPolicyConfigurations': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyConfigurations, Map<String, dynamic>>(securityPolicyConfigurations, (value) => value.toMap()),
      'tags': ?tags,
      'trafficControllerName': ?trafficControllerName,
    };
  }

  factory TrafficControllerInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return TrafficControllerInterfaceArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securityPolicyConfigurations: map['securityPolicyConfigurations'] == null ? null : (SecurityPolicyConfigurations.fromMap((map['securityPolicyConfigurations'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trafficControllerName: map['trafficControllerName'] == null ? null : (map['trafficControllerName'] as String).input(),
    );
  }
}

