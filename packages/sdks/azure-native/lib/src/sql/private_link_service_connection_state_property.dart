// ignore_for_file: unused_element, unnecessary_cast


class PrivateLinkServiceConnectionStateProperty {
  /// The private link service connection description.
  final String description;
  /// The private link service connection status.
  final String status;

  /// Creates a new [PrivateLinkServiceConnectionStateProperty].
  /// [description] The private link service connection description.
  /// [status] The private link service connection status.
  PrivateLinkServiceConnectionStateProperty({
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'status': status,
    };
  }

  factory PrivateLinkServiceConnectionStateProperty.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateProperty(
      description: map['description'] as String,
      status: map['status'] as String,
    );
  }
}

