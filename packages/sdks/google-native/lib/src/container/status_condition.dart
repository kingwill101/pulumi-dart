// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_condition_canonical_code.dart';
import 'status_condition_code.dart';

/// StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).
class StatusCondition {
  /// Canonical code of the condition.
  final pulumi.Input<StatusConditionCanonicalCode>? canonicalCode;
  /// Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  final pulumi.Input<StatusConditionCode>? code;
  /// Human-friendly representation of the condition
  final pulumi.Input<String>? message;

  /// Creates a new [StatusCondition].
  /// [canonicalCode] Canonical code of the condition.
  /// [code] Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  /// [message] Human-friendly representation of the condition
  StatusCondition({
    this.canonicalCode,
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalCode': ?pulumi.Input.mapOptionalInputValue<StatusConditionCanonicalCode, String>(canonicalCode, (value) => value.value),
      'code': ?pulumi.Input.mapOptionalInputValue<StatusConditionCode, String>(code, (value) => value.value),
      'message': ?message,
    };
  }

  factory StatusCondition.fromMap(Map<String, dynamic> map) {
    return StatusCondition(
      canonicalCode: map['canonicalCode'] == null ? null : (StatusConditionCanonicalCode.fromValue(map['canonicalCode'] as String)).input(),
      code: map['code'] == null ? null : (StatusConditionCode.fromValue(map['code'] as String)).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
    );
  }
}

