// ignore_for_file: unused_element, unnecessary_cast


/// State of the Private Link Service connection.
class RemotePrivateLinkServiceConnectionStateResponse {
  /// Human-friendly description of required actions.
  final String actionsRequired;
  /// Human-friendly description.
  final String description;
  /// State of Private Link Connection.
  final String? status;

  /// Creates a new [RemotePrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Human-friendly description of required actions.
  /// [description] Human-friendly description.
  /// [status] State of Private Link Connection.
  RemotePrivateLinkServiceConnectionStateResponse({
    required this.actionsRequired,
    required this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': description,
      'status': ?status,
    };
  }

  factory RemotePrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return RemotePrivateLinkServiceConnectionStateResponse(
      actionsRequired: map['actionsRequired'] as String,
      description: map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

