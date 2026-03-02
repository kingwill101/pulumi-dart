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

  factory GetPrivateLinkServicePrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLinkServicePrivateEndpointConnectionArgs(
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      peConnectionName: (map['peConnectionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

