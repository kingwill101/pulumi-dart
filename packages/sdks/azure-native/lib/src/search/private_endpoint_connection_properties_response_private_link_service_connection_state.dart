// ignore_for_file: unused_element, unnecessary_cast


/// Describes the current state of an existing Azure Private Link service connection to the private endpoint.
class PrivateEndpointConnectionPropertiesResponsePrivateLinkServiceConnectionState {
  /// A description of any extra actions that may be required.
  final String? actionsRequired;
  /// The description for the private link service connection state.
  final String? description;
  /// Status of the the private link service connection. Valid values are Pending, Approved, Rejected, or Disconnected.
  final String? status;

  /// Creates a new [PrivateEndpointConnectionPropertiesResponsePrivateLinkServiceConnectionState].
  /// [actionsRequired] A description of any extra actions that may be required.
  /// [description] The description for the private link service connection state.
  /// [status] Status of the the private link service connection. Valid values are Pending, Approved, Rejected, or Disconnected.
  PrivateEndpointConnectionPropertiesResponsePrivateLinkServiceConnectionState({
    this.actionsRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': ?actionsRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateEndpointConnectionPropertiesResponsePrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionPropertiesResponsePrivateLinkServiceConnectionState(
      actionsRequired: map['actionsRequired'] == null ? null : map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

