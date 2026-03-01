// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_get_service_endpoint_connections_get_service_endpoint_connections_args_doc}
/// Arguments for getServiceEndpointConnections.
/// {@endtemplate}
/// {@macro pulumi_privatelink_get_service_endpoint_connections_get_service_endpoint_connections_args_doc}
class GetServiceEndpointConnectionsArgs {
  /// The name of the resource group in which the private link service resides.
  final pulumi.Input<String> resourceGroupName;
  /// The resource ID of the private link service.
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceEndpointConnectionsArgs].
  /// [resourceGroupName] The name of the resource group in which the private link service resides.
  /// [serviceId] The resource ID of the private link service.
  GetServiceEndpointConnectionsArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceId,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceId': serviceId,
    };
  }

  factory GetServiceEndpointConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointConnectionsArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
    );
  }
}

