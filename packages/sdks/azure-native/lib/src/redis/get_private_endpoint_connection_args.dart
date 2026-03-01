// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_redis_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The name of the Redis cache.
  final pulumi.Input<String> cacheName;
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [cacheName] The name of the Redis cache.
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPrivateEndpointConnectionArgs({
    required pulumi.Output<String> cacheName,
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      cacheName = pulumi.Input.asInput<String>(cacheName),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheName': cacheName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      cacheName: pulumi.Output.create<String>(map['cacheName'] as String),
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

