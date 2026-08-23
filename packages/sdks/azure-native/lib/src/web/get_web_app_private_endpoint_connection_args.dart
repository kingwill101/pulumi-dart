// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_private_endpoint_connection_args_doc}
/// Arguments for getWebAppPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_private_endpoint_connection_args_doc}
class GetWebAppPrivateEndpointConnectionArgs {
  /// Name of the site.
  final pulumi.Input<String> name;
  /// Name of the private endpoint connection.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppPrivateEndpointConnectionArgs].
  /// [name] Name of the site.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppPrivateEndpointConnectionArgs({
    required this.name,
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPrivateEndpointConnectionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpointConnectionName: pulumi.Input.fromValue(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
