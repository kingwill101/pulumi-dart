// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Violation information.
class ViolationResponse {
  /// Error message.
  final pulumi.Input<String> errorMessage;
  /// Id of the item that violates tenant configuration.
  final pulumi.Input<String> id;
  /// Id of the user who owns violated item.
  final pulumi.Input<String> userId;

  /// Creates a new [ViolationResponse].
  /// [errorMessage] Error message.
  /// [id] Id of the item that violates tenant configuration.
  /// [userId] Id of the user who owns violated item.
  const ViolationResponse({
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
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}

