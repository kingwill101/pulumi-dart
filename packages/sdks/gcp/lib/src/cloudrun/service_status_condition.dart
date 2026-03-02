// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceStatusCondition {
  /// (Output)
  /// Human readable message indicating details about the current status.
  final pulumi.Input<String>? message;
  /// (Output)
  /// One-word CamelCase reason for the condition's current status.
  final pulumi.Input<String>? reason;
  /// (Output)
  /// Status of the condition, one of True, False, Unknown.
  final pulumi.Input<String>? status;
  /// (Output)
  /// Type of domain mapping condition.
  final pulumi.Input<String>? type;

  /// Creates a new [ServiceStatusCondition].
  /// [message] (Output)
  /// [reason] (Output)
  /// [status] (Output)
  /// [type] (Output)
  ServiceStatusCondition({
    this.message,
    this.reason,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'reason': ?reason,
      'status': ?status,
      'type': ?type,
    };
  }

  factory ServiceStatusCondition.fromMap(Map<String, dynamic> map) {
    return ServiceStatusCondition(
      message: map['message'] == null ? null : (map['message'] as String).input(),
      reason: map['reason'] == null ? null : (map['reason'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

