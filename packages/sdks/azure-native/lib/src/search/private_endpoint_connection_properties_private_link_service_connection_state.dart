// ignore_for_file: unused_element, unnecessary_cast

import 'private_link_service_connection_status.dart';

/// Describes the current state of an existing Azure Private Link service connection to the private endpoint.
class PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionState {
  /// A description of any extra actions that may be required.
  final String? actionsRequired;
  /// The description for the private link service connection state.
  final String? description;
  /// Status of the the private link service connection. Valid values are Pending, Approved, Rejected, or Disconnected.
  final PrivateLinkServiceConnectionStatus? status;

  /// Creates a new [PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionState].
  /// [actionsRequired] A description of any extra actions that may be required.
  /// [description] The description for the private link service connection state.
  /// [status] Status of the the private link service connection. Valid values are Pending, Approved, Rejected, or Disconnected.
  PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionState({
    this.actionsRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': ?status == null ? null : status!.value,
    };
  }

  factory PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesPrivateLinkServiceConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : PrivateLinkServiceConnectionStatus.fromValue(map['status'] as String),
    );
  }
}

