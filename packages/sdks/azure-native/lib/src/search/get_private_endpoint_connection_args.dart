// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_search_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_search_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection to the Azure AI Search service with the specified resource group.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String> searchServiceName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection to the Azure AI Search service with the specified resource group.
  /// [resourceGroupName] The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  GetPrivateEndpointConnectionArgs({
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> searchServiceName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      searchServiceName = pulumi.Input.asInput<String>(searchServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'searchServiceName': searchServiceName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      searchServiceName: pulumi.Output.create<String>(map['searchServiceName'] as String),
    );
  }
}

