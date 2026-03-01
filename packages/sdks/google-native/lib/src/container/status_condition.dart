// ignore_for_file: unused_element, unnecessary_cast

import 'status_condition_canonical_code.dart';
import 'status_condition_code.dart';

/// StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).
class StatusCondition {
  /// Canonical code of the condition.
  final StatusConditionCanonicalCode? canonicalCode;
  /// Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  final StatusConditionCode? code;
  /// Human-friendly representation of the condition
  final String? message;

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
      'canonicalCode': ?canonicalCode == null ? null : canonicalCode!.value,
      'code': ?code == null ? null : code!.value,
      'message': ?message,
    };
  }

  factory StatusCondition.fromMap(Map<String, dynamic> map) {
    return StatusCondition(
      canonicalCode: map['canonicalCode'] == null ? null : StatusConditionCanonicalCode.fromValue(map['canonicalCode'] as String),
      code: map['code'] == null ? null : StatusConditionCode.fromValue(map['code'] as String),
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

