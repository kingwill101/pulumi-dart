// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'proxy_resource_response_system_data.dart';

/// Result data returned by getPrivateEndpointConnection.
class GetPrivateEndpointConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Gets or sets the identifier.
  final String id;

  /// Gets or sets the name.
  final String name;

  /// The private endpoint information.
  final PrivateEndpointResponse? privateEndpoint;

  /// The private link service connection state.
  final PrivateLinkServiceConnectionStateResponse?
  privateLinkServiceConnectionState;

  /// The provisioning state.
  final String provisioningState;

  /// Metadata pertaining to creation and last modification of the resource.
  final ProxyResourceResponseSystemData systemData;

  /// Gets or sets the type.
  final String type;

  /// Creates a new [GetPrivateEndpointConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the identifier.
  /// [name] Gets or sets the name.
  /// [privateEndpoint] The private endpoint information.
  /// [privateLinkServiceConnectionState] The private link service connection state.
  /// [provisioningState] The provisioning state.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Gets or sets the type.
  GetPrivateEndpointConnectionResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint?.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState
          ?.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetPrivateEndpointConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return PrivateEndpointResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return PrivateLinkServiceConnectionStateResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      provisioningState: map['provisioningState'] as String,
      systemData: ProxyResourceResponseSystemData.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
