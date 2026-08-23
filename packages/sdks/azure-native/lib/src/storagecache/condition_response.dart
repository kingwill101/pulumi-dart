// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Outstanding conditions that will need to be resolved.
class ConditionResponse {
  /// The issue requiring attention.
  final pulumi.Input<String> message;
  /// The time when the condition was raised.
  final pulumi.Input<String> timestamp;

  /// Creates a new [ConditionResponse].
  /// [message] The issue requiring attention.
  /// [timestamp] The time when the condition was raised.
  const ConditionResponse({
    required this.message,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'timestamp': timestamp,
    };
  }

  factory ConditionResponse.fromMap(Map<String, dynamic> map) {
    return ConditionResponse(
      message: pulumi.Input.fromValue(map['message'] as String),
      timestamp: pulumi.Input.fromValue(map['timestamp'] as String),
    );
  }
}
