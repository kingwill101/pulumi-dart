// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityandcompliance_get_private_endpoint_connections_for_edmargs_doc}
/// Arguments for getPrivateEndpointConnectionsForEDM.
/// {@endtemplate}
/// {@macro pulumi_securityandcompliance_get_private_endpoint_connections_for_edmargs_doc}
class GetPrivateEndpointConnectionsForEDMArgs {
  /// The name of the private endpoint connection associated with the Azure resource
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service instance.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetPrivateEndpointConnectionsForEDMArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceName] The name of the service instance.
  GetPrivateEndpointConnectionsForEDMArgs({
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetPrivateEndpointConnectionsForEDMArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionsForEDMArgs(
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

