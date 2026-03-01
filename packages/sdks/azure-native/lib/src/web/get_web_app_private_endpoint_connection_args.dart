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
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppPrivateEndpointConnectionArgs].
  /// [name] Name of the site.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetWebAppPrivateEndpointConnectionArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPrivateEndpointConnectionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

