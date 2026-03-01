// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'proxy_resource_response_system_data.dart';

/// A private endpoint connection class.
class PrivateEndpointConnectionResponse {
  /// Gets or sets the identifier.
  final String id;
  /// Gets or sets the name.
  final String name;
  /// The private endpoint information.
  final PrivateEndpointResponse? privateEndpoint;
  /// The private link service connection state.
  final PrivateLinkServiceConnectionStateResponse? privateLinkServiceConnectionState;
  /// The provisioning state.
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final ProxyResourceResponseSystemData systemData;
  /// Gets or sets the type.
  final String type;

  /// Creates a new [PrivateEndpointConnectionResponse].
  /// [id] Gets or sets the identifier.
  /// [name] Gets or sets the name.
  /// [privateEndpoint] The private endpoint information.
  /// [privateLinkServiceConnectionState] The private link service connection state.
  /// [provisioningState] The provisioning state.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] Gets or sets the type.
  PrivateEndpointConnectionResponse({
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
      'id': id,
      'name': name,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      id: map['id'] as String,
      name: map['name'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointResponse.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionStateResponse.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      systemData: ProxyResourceResponseSystemData.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

