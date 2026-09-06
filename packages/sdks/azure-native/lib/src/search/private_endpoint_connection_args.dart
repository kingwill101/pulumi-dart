// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties.dart';

/// {@template pulumi_search_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_search_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection to the Azure AI Search service with the specified resource group.
  final pulumi.Input<String?>? privateEndpointConnectionName;
  /// Describes the properties of an existing private endpoint connection to the Azure AI Search service.
  final pulumi.Input<PrivateEndpointConnectionProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Azure AI Search service associated with the specified resource group.
  final pulumi.Input<String> searchServiceName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection to the Azure AI Search service with the specified resource group.
  /// [properties] Describes the properties of an existing private endpoint connection to the Azure AI Search service.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [searchServiceName] The name of the Azure AI Search service associated with the specified resource group.
  const PrivateEndpointConnectionArgs({
    this.privateEndpointConnectionName,
    this.properties,
    required this.resourceGroupName,
    required this.searchServiceName,
  });

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
      privateEndpointConnectionName: (() { final guardedValue = map['privateEndpointConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointConnectionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      searchServiceName: pulumi.Input.fromValue(map['searchServiceName'] as String),
    );
  }
}
