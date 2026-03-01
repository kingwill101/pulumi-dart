// ignore_for_file: unused_element, unnecessary_cast


/// A collection of information about the state of the connection between service consumer and provider.
class PrivateLinkServiceConnectionState {
  /// A message indicating if changes on the service provider require any updates on the consumer.
  final String? actionRequired;
  /// The reason for approval/rejection of the connection.
  final String? description;
  /// Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  final String? status;

  /// Creates a new [PrivateLinkServiceConnectionState].
  /// [actionRequired] A message indicating if changes on the service provider require any updates on the consumer.
  /// [description] The reason for approval/rejection of the connection.
  /// [status] Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  PrivateLinkServiceConnectionState({
    this.actionRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRequired': ?actionRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateLinkServiceConnectionState.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionState(
      actionRequired: map['actionRequired'] == null ? null : map['actionRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

