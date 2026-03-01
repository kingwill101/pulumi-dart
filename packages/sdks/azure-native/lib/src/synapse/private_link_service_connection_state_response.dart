// ignore_for_file: unused_element, unnecessary_cast


/// Connection state details of the private endpoint
class PrivateLinkServiceConnectionStateResponse {
  /// The actions required for private link service connection.
  final String actionsRequired;
  /// The private link service connection description.
  final String? description;
  /// The private link service connection status.
  final String? status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] The actions required for private link service connection.
  /// [description] The private link service connection description.
  /// [status] The private link service connection status.
  PrivateLinkServiceConnectionStateResponse({
    required this.actionsRequired,
    this.description,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': ?description,
      'status': ?status,
    };
  }

  factory PrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateResponse(
      actionsRequired: map['actionsRequired'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

