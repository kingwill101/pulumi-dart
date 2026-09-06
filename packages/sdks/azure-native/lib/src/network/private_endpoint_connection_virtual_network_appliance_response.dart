// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_virtual_network_appliance_response.dart';
import 'private_link_service_connection_state_response.dart';

/// PrivateEndpointConnection resource.
class PrivateEndpointConnectionVirtualNetworkApplianceResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The consumer link id.
  final pulumi.Input<String> linkIdentifier;
  /// Name of the resource.
  final pulumi.Input<String?>? name;
  /// The resource of private end point.
  final pulumi.Input<PrivateEndpointVirtualNetworkApplianceResponse> privateEndpoint;
  /// The location of the private endpoint.
  final pulumi.Input<String> privateEndpointLocation;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionStateResponse?>? privateLinkServiceConnectionState;
  /// The provisioning state of the private endpoint connection resource.
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [PrivateEndpointConnectionVirtualNetworkApplianceResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [linkIdentifier] The consumer link id.
  /// [name] Name of the resource.
  /// [privateEndpoint] The resource of private end point.
  /// [privateEndpointLocation] The location of the private endpoint.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [provisioningState] The provisioning state of the private endpoint connection resource.
  /// [type] Resource type.
  const PrivateEndpointConnectionVirtualNetworkApplianceResponse({
    required this.etag,
    this.id,
    required this.linkIdentifier,
    this.name,
    required this.privateEndpoint,
    required this.privateEndpointLocation,
    this.privateLinkServiceConnectionState,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'linkIdentifier': linkIdentifier,
      'name': ?name,
      'privateEndpoint': pulumi.Input.mapInputValue<PrivateEndpointVirtualNetworkApplianceResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointLocation': privateEndpointLocation,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory PrivateEndpointConnectionVirtualNetworkApplianceResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionVirtualNetworkApplianceResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkIdentifier: pulumi.Input.fromValue(map['linkIdentifier'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoint: pulumi.Input.fromValue(PrivateEndpointVirtualNetworkApplianceResponse.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())),
      privateEndpointLocation: pulumi.Input.fromValue(map['privateEndpointLocation'] as String),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
