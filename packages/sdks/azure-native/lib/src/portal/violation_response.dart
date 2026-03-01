// ignore_for_file: unused_element, unnecessary_cast


/// Violation information.
class ViolationResponse {
  /// Error message.
  final String errorMessage;
  /// Id of the item that violates tenant configuration.
  final String id;
  /// Id of the user who owns violated item.
  final String userId;

  /// Creates a new [ViolationResponse].
  /// [errorMessage] Error message.
  /// [id] Id of the item that violates tenant configuration.
  /// [userId] Id of the user who owns violated item.
  ViolationResponse({
    required this.errorMessage,
    required this.id,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': errorMessage,
      'id': id,
      'userId': userId,
    };
  }

  factory ViolationResponse.fromMap(Map<String, dynamic> map) {
    return ViolationResponse(
      errorMessage: map['errorMessage'] as String,
      id: map['id'] as String,
      userId: map['userId'] as String,
    );
  }
}

