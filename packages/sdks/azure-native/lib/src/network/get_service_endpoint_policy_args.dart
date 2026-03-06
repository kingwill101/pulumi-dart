// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_service_endpoint_policy_args_doc}
/// Arguments for getServiceEndpointPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_get_service_endpoint_policy_args_doc}
class GetServiceEndpointPolicyArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service endpoint policy.
  final pulumi.Input<String> serviceEndpointPolicyName;

  /// Creates a new [GetServiceEndpointPolicyArgs].
  /// [expand] Expands referenced resources.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceEndpointPolicyName] The name of the service endpoint policy.
  const GetServiceEndpointPolicyArgs({
    this.expand,
    required this.resourceGroupName,
    required this.serviceEndpointPolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'serviceEndpointPolicyName': serviceEndpointPolicyName,
    };
  }

  factory GetServiceEndpointPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointPolicyArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceEndpointPolicyName: pulumi.Input.fromValue(map['serviceEndpointPolicyName'] as String),
    );
  }
}

