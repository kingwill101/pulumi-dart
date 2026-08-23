// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalrservice_get_signal_rprivate_endpoint_connection_args_doc}
/// Arguments for getSignalRPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_get_signal_rprivate_endpoint_connection_args_doc}
class GetSignalRPrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetSignalRPrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  const GetSignalRPrivateEndpointConnectionArgs({
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetSignalRPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetSignalRPrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Input.fromValue(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}
