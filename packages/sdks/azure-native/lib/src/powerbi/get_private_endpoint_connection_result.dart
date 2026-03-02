// ignore_for_file: unused_element, unnecessary_cast

import 'connection_state_response.dart';
import 'private_endpoint_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Specifies the id of the resource.
  final String id;
  /// Specifies the name of the resource.
  final String name;
  /// Specifies the private endpoint.
  final PrivateEndpointResponse? privateEndpoint;
  /// Specifies the connection state.
  final ConnectionStateResponse? privateLinkServiceConnectionState;
  /// Provisioning state of the Private Endpoint Connection.
  final String? provisioningState;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Specifies the type of the resource.
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Specifies the id of the resource.
  /// [name] Specifies the name of the resource.
  /// [privateEndpoint] Specifies the private endpoint.
  /// [privateLinkServiceConnectionState] Specifies the connection state.
  /// [provisioningState] Provisioning state of the Private Endpoint Connection.
  /// [systemData] The system meta data relating to this resource.
  /// [type] Specifies the type of the resource.
  GetPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': ?provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : ConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

