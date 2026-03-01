// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_connection_properties_private_endpoint.dart';
import 'private_endpoint_connection_properties_private_link_service_connection_state.dart';

/// Describes the properties of an existing private endpoint connection to the search service.
class PrivateEndpointConnectionProperties {
  /// The group ID of the Azure resource for which the private link service is for.
  final String? groupId;
  /// The private endpoint resource from Microsoft.Network provider.
  final PrivateEndpointConnectionPropertiesPrivateEndpoint? privateEndpoint;
  /// Describes the current state of an existing Azure Private Link service connection to the private endpoint.
  final PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionState? privateLinkServiceConnectionState;
  /// The provisioning state of the private link service connection. Valid values are Updating, Deleting, Failed, Succeeded, Incomplete, or Canceled.
  final String? provisioningState;

  /// Creates a new [PrivateEndpointConnectionProperties].
  /// [groupId] The group ID of the Azure resource for which the private link service is for.
  /// [privateEndpoint] The private endpoint resource from Microsoft.Network provider.
  /// [privateLinkServiceConnectionState] Describes the current state of an existing Azure Private Link service connection to the private endpoint.
  /// [provisioningState] The provisioning state of the private link service connection. Valid values are Updating, Deleting, Failed, Succeeded, Incomplete, or Canceled.
  PrivateEndpointConnectionProperties({
    this.groupId,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'privateEndpoint': ?privateEndpoint == null ? null : privateEndpoint!.toMap(),
      'privateLinkServiceConnectionState': ?privateLinkServiceConnectionState == null ? null : privateLinkServiceConnectionState!.toMap(),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnectionProperties.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProperties(
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpointConnectionPropertiesPrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

