// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_get_private_endpoint_args_doc}
/// Arguments for getPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_get_private_endpoint_args_doc}
class GetPrivateEndpointArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;

  /// The name of the private endpoint.
  final pulumi.Input<String> privateEndpointName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointArgs].
  /// [clusterName] The name of the cluster.
  /// [privateEndpointName] The name of the private endpoint.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateEndpointArgs({
    required this.clusterName,
    required this.privateEndpointName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'privateEndpointName': privateEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      privateEndpointName: pulumi.Input.fromValue(
        map['privateEndpointName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
