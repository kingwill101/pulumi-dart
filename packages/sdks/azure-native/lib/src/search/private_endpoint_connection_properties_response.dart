// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_properties_private_endpoint_response.dart';
import 'private_endpoint_connection_properties_private_link_service_connection_state_response.dart';

/// Describes the properties of an existing private endpoint connection to the search service.
class PrivateEndpointConnectionPropertiesResponse {
  /// The group ID of the Azure resource for which the private link service is for.
  final pulumi.Input<String?>? groupId;
  /// The private endpoint resource from Microsoft.Network provider.
  final pulumi.Input<PrivateEndpointConnectionPropertiesPrivateEndpointResponse?>? privateEndpoint;
  /// Describes the current state of an existing Azure Private Link service connection to the private endpoint.
  final pulumi.Input<PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateResponse?>? privateLinkServiceConnectionState;
  /// The provisioning state of the private link service connection. Valid values are Updating, Deleting, Failed, Succeeded, Incomplete, or Canceled.
  final pulumi.Input<String?>? provisioningState;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponse].
  /// [groupId] The group ID of the Azure resource for which the private link service is for.
  /// [privateEndpoint] The private endpoint resource from Microsoft.Network provider.
  /// [privateLinkServiceConnectionState] Describes the current state of an existing Azure Private Link service connection to the private endpoint.
  /// [provisioningState] The provisioning state of the private link service connection. Valid values are Updating, Deleting, Failed, Succeeded, Incomplete, or Canceled.
  const PrivateEndpointConnectionPropertiesResponse({
    this.groupId,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionPropertiesPrivateEndpointResponse, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateResponse, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponse(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointConnectionPropertiesPrivateEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
