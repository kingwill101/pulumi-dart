// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties.dart';

/// {@template pulumi_search_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_search_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection to the Azure AI Search service with the specified resource group.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Describes the properties of an existing private endpoint connection to the Azure AI Search service.
  final pulumi.Input<PrivateEndpointConnectionProperties>? properties;
  /// The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String> searchServiceName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection to the Azure AI Search service with the specified resource group.
  /// [properties] Describes the properties of an existing private endpoint connection to the Azure AI Search service.
  /// [resourceGroupName] The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  PrivateEndpointConnectionArgs({
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateEndpointConnectionProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> searchServiceName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      properties = pulumi.Input.asOptionalInput<PrivateEndpointConnectionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      searchServiceName = pulumi.Input.asInput<String>(searchServiceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'searchServiceName': searchServiceName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<PrivateEndpointConnectionProperties>(PrivateEndpointConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      searchServiceName: pulumi.Output.create<String>(map['searchServiceName'] as String),
    );
  }
}

