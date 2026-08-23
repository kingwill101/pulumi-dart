// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_connection_policy_args_doc}
/// Arguments for getConnectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_get_connection_policy_args_doc}
class GetConnectionPolicyArgs {
  /// The name of the ConnectionPolicy that is unique within a VirtualHub. This name can be used to access the resource.
  final pulumi.Input<String> connectionPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetConnectionPolicyArgs].
  /// [connectionPolicyName] The name of the ConnectionPolicy that is unique within a VirtualHub. This name can be used to access the resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualHubName] The name of the VirtualHub.
  const GetConnectionPolicyArgs({
    required this.connectionPolicyName,
    required this.resourceGroupName,
    required this.virtualHubName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPolicyName': connectionPolicyName,
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetConnectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionPolicyArgs(
      connectionPolicyName: pulumi.Input.fromValue(map['connectionPolicyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualHubName: pulumi.Input.fromValue(map['virtualHubName'] as String),
    );
  }
}
