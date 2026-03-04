// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_powerbi_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_powerbi_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The name of the Azure resource.
  final pulumi.Input<String> azureResourceName;

  /// The name of the private endpoint.
  final pulumi.Input<String> privateEndpointName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [azureResourceName] The name of the Azure resource.
  /// [privateEndpointName] The name of the private endpoint.
  /// [resourceGroupName] The name of the resource group.
  GetPrivateEndpointConnectionArgs({
    required this.azureResourceName,
    required this.privateEndpointName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceName': azureResourceName,
      'privateEndpointName': privateEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      azureResourceName: pulumi.Input.fromValue(
        map['azureResourceName'] as String,
      ),
      privateEndpointName: pulumi.Input.fromValue(
        map['privateEndpointName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
