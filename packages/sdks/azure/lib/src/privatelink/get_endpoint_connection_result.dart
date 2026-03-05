// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_connection_network_interface.dart';
import 'get_endpoint_connection_private_service_connection.dart';

/// Result data returned by getEndpointConnection.
class GetEndpointConnectionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The supported Azure location where the resource exists.
  final String location;
  /// The name of the private endpoint.
  final String name;
  final List<GetEndpointConnectionNetworkInterface> networkInterfaces;
  final List<GetEndpointConnectionPrivateServiceConnection> privateServiceConnections;
  final String resourceGroupName;

  /// Creates a new [GetEndpointConnectionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the resource exists.
  /// [name] The name of the private endpoint.
  /// [networkInterfaces] Required.
  /// [privateServiceConnections] Required.
  /// [resourceGroupName] Required.
  GetEndpointConnectionResult({
    required this.id,
    required this.location,
    required this.name,
    required this.networkInterfaces,
    required this.privateServiceConnections,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'networkInterfaces': pulumi.Input.encodeList<GetEndpointConnectionNetworkInterface, Map<String, dynamic>>(networkInterfaces, (value) => value.toMap()),
      'privateServiceConnections': pulumi.Input.encodeList<GetEndpointConnectionPrivateServiceConnection, Map<String, dynamic>>(privateServiceConnections, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointConnectionResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkInterfaces: pulumi.Input.decodeList<GetEndpointConnectionNetworkInterface>(map['networkInterfaces']!, (value) => GetEndpointConnectionNetworkInterface.fromMap((value as Map).cast<String, dynamic>())),
      privateServiceConnections: pulumi.Input.decodeList<GetEndpointConnectionPrivateServiceConnection>(map['privateServiceConnections']!, (value) => GetEndpointConnectionPrivateServiceConnection.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

