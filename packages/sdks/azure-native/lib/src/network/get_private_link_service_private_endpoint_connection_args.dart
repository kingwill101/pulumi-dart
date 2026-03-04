// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_private_link_service_private_endpoint_connection_args_doc}
/// Arguments for getPrivateLinkServicePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_private_link_service_private_endpoint_connection_args_doc}
class GetPrivateLinkServicePrivateEndpointConnectionArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;

  /// The name of the private end point connection.
  final pulumi.Input<String> peConnectionName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the private link service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetPrivateLinkServicePrivateEndpointConnectionArgs].
  /// [expand] Expands referenced resources.
  /// [peConnectionName] The name of the private end point connection.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the private link service.
  GetPrivateLinkServicePrivateEndpointConnectionArgs({
    this.expand,
    required this.peConnectionName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'peConnectionName': peConnectionName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetPrivateLinkServicePrivateEndpointConnectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPrivateLinkServicePrivateEndpointConnectionArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peConnectionName: pulumi.Input.fromValue(
        map['peConnectionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
