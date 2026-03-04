// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the status of a trigger
class TriggerStatusResponse {
  /// The status code.
  final pulumi.Input<String> code;

  /// The detailed status message, including for alerts and error messages.
  final pulumi.Input<String> message;

  /// The time of the status.
  final pulumi.Input<String> time;

  /// Creates a new [TriggerStatusResponse].
  /// [code] The status code.
  /// [message] The detailed status message, including for alerts and error messages.
  /// [time] The time of the status.
  TriggerStatusResponse({
    required this.code,
    required this.message,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code, 'message': message, 'time': time};
  }

  factory TriggerStatusResponse.fromMap(Map<String, dynamic> map) {
    return TriggerStatusResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      time: pulumi.Input.fromValue(map['time'] as String),
    );
  }
}
