// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).
class StatusConditionResponse {
  /// Canonical code of the condition.
  final pulumi.Input<String> canonicalCode;
  /// Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  final pulumi.Input<String> code;
  /// Human-friendly representation of the condition
  final pulumi.Input<String> message;

  /// Creates a new [StatusConditionResponse].
  /// [canonicalCode] Canonical code of the condition.
  /// [code] Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  /// [message] Human-friendly representation of the condition
  StatusConditionResponse({
    required this.canonicalCode,
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalCode': canonicalCode,
      'code': code,
      'message': message,
    };
  }

  factory StatusConditionResponse.fromMap(Map<String, dynamic> map) {
    return StatusConditionResponse(
      canonicalCode: pulumi.Input.fromValue(map['canonicalCode'] as String),
      code: pulumi.Input.fromValue(map['code'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

