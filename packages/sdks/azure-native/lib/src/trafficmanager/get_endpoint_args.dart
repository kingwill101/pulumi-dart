// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_trafficmanager_get_endpoint_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_trafficmanager_get_endpoint_args_doc}
class GetEndpointArgs {
  /// The name of the Traffic Manager endpoint.
  final pulumi.Input<String> endpointName;
  /// The type of the Traffic Manager endpoint.
  final pulumi.Input<String> endpointType;
  /// The name of the Traffic Manager profile.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEndpointArgs].
  /// [endpointName] The name of the Traffic Manager endpoint.
  /// [endpointType] The type of the Traffic Manager endpoint.
  /// [profileName] The name of the Traffic Manager profile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEndpointArgs({
    required this.endpointName,
    required this.endpointType,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'endpointType': endpointType,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs(
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
