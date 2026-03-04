// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_response.dart';
import 'private_link_service_connection_state_response.dart';
import 'proxy_resource_response_system_data.dart';

/// A private endpoint connection class.
class PrivateEndpointConnectionResponse {
  /// Gets or sets the identifier.
  final pulumi.Input<String> id;

  /// Gets or sets the name.
  final pulumi.Input<String> name;

  /// The private endpoint information.
  final pulumi.Input<PrivateEndpointResponse>? privateEndpoint;

  /// The private link service connection state.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse>?
  privateLinkServiceConnectionState;

  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

  /// Metadata pertaining to creation and last modification of the resource.
  final pulumi.Input<ProxyResourceResponseSystemData> systemData;

  /// Gets or sets the type.
  final pulumi.Input<String> type;

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
      'privateEndpoint':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateEndpointResponse,
            Map<String, dynamic>
          >(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState':
          ?pulumi.Input.mapOptionalInputValue<
            PrivateLinkServiceConnectionStateResponse,
            Map<String, dynamic>
          >(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'systemData':
          pulumi.Input.mapInputValue<
            ProxyResourceResponseSystemData,
            Map<String, dynamic>
          >(systemData, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PrivateEndpointConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpoint: (() {
        final guardedValue = map['privateEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateEndpointResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateLinkServiceConnectionState: (() {
        final guardedValue = map['privateLinkServiceConnectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateLinkServiceConnectionStateResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      systemData: pulumi.Input.fromValue(
        ProxyResourceResponseSystemData.fromMap(
          (map['systemData']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
