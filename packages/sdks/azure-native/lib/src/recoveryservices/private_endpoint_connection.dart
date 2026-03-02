// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint.dart';
import 'private_link_service_connection_state.dart';

/// Private Endpoint Connection Response Properties
class PrivateEndpointConnection {
  /// Group Ids for the Private Endpoint
  final pulumi.Input<List<String>>? groupIds;
  /// Gets or sets private endpoint associated with the private endpoint connection
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;
  /// Gets or sets private link service connection state
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// Gets or sets provisioning state of the private endpoint connection
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [PrivateEndpointConnection].
  /// [groupIds] Group Ids for the Private Endpoint
  /// [privateEndpoint] Gets or sets private endpoint associated with the private endpoint connection
  /// [privateLinkServiceConnectionState] Gets or sets private link service connection state
  /// [provisioningState] Gets or sets provisioning state of the private endpoint connection
  PrivateEndpointConnection({
    this.groupIds,
    this.privateEndpoint,
    this.privateLinkServiceConnectionState,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
    };
  }

  factory PrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnection(
      groupIds: map['groupIds'] == null ? null : ((map['groupIds'] as List).cast<String>()).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
    );
  }
}

