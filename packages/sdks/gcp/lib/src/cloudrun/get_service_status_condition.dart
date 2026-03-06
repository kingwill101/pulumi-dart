// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceStatusCondition {
  /// Human readable message indicating details about the current status.
  final pulumi.Input<String> message;
  /// One-word CamelCase reason for the condition's current status.
  final pulumi.Input<String> reason;
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String> status;
  /// Type of domain mapping condition.
  final pulumi.Input<String> type;

  /// Creates a new [GetServiceStatusCondition].
  /// [message] Human readable message indicating details about the current status.
  /// [reason] One-word CamelCase reason for the condition's current status.
  /// [status] Status of the condition, one of True, False, Unknown.
  /// [type] Type of domain mapping condition.
  const GetServiceStatusCondition({
    required this.message,
    required this.reason,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'reason': reason,
      'status': status,
      'type': type,
    };
  }

  factory GetServiceStatusCondition.fromMap(Map<String, dynamic> map) {
    return GetServiceStatusCondition(
      message: pulumi.Input.fromValue(map['message'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

