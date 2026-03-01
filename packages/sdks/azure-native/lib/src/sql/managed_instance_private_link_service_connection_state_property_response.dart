// ignore_for_file: unused_element, unnecessary_cast


class ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse {
  /// The private link service connection description.
  final String actionsRequired;
  /// The private link service connection description.
  final String description;
  /// The private link service connection status.
  final String status;

  /// Creates a new [ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse].
  /// [actionsRequired] The private link service connection description.
  /// [description] The private link service connection description.
  /// [status] The private link service connection status.
  ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse({
    required this.actionsRequired,
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': description,
      'status': status,
    };
  }

  factory ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse.fromMap(Map<String, dynamic> map) {
    return ManagedInstancePrivateLinkServiceConnectionStatePropertyResponse(
      actionsRequired: map['actionsRequired'] as String,
      description: map['description'] as String,
      status: map['status'] as String,
    );
  }
}

