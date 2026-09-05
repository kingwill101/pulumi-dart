// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoint_connection_network_interface.dart';
import 'get_endpoint_connection_private_service_connection.dart';

/// Result data returned by getEndpointConnection.
class GetEndpointConnectionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The supported Azure location where the resource exists.
  final String? location;
  /// The name of the private endpoint.
  final String? name;
  final List<GetEndpointConnectionNetworkInterface>? networkInterfaces;
  final List<GetEndpointConnectionPrivateServiceConnection>? privateServiceConnections;
  final String? resourceGroupName;

  /// Creates a new [GetEndpointConnectionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The supported Azure location where the resource exists.
  /// [name] The name of the private endpoint.
  /// [networkInterfaces] Optional.
  /// [privateServiceConnections] Optional.
  /// [resourceGroupName] Optional.
  const GetEndpointConnectionResult({
    this.id,
    this.location,
    this.name,
    this.networkInterfaces,
    this.privateServiceConnections,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkInterfaces': ?(() { final guardedValue = networkInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointConnectionNetworkInterface, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'privateServiceConnections': ?(() { final guardedValue = privateServiceConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEndpointConnectionPrivateServiceConnection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetEndpointConnectionResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointConnectionNetworkInterface>(guardedValue, (value) => GetEndpointConnectionNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); })(),
      privateServiceConnections: (() { final guardedValue = map['privateServiceConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEndpointConnectionPrivateServiceConnection>(guardedValue, (value) => GetEndpointConnectionPrivateServiceConnection.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
