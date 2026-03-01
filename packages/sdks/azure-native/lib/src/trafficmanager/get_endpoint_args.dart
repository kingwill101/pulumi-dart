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
  GetEndpointArgs({
    required pulumi.Output<String> endpointName,
    required pulumi.Output<String> endpointType,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      endpointType = pulumi.Input.asInput<String>(endpointType),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      endpointType: pulumi.Output.create<String>(map['endpointType'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

