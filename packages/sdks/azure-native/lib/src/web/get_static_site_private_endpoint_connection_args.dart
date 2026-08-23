// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_static_site_private_endpoint_connection_args_doc}
/// Arguments for getStaticSitePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_static_site_private_endpoint_connection_args_doc}
class GetStaticSitePrivateEndpointConnectionArgs {
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// Name of the private endpoint connection.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStaticSitePrivateEndpointConnectionArgs].
  /// [name] Name of the static site.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetStaticSitePrivateEndpointConnectionArgs({
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

  factory GetStaticSitePrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticSitePrivateEndpointConnectionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpointConnectionName: pulumi.Input.fromValue(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
