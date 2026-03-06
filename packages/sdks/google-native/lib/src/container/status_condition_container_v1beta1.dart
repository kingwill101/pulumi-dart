// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_condition_canonical_code_container_v1beta1.dart';
import 'status_condition_code_container_v1beta1.dart';

/// StatusCondition describes why a cluster or a node pool has a certain status (e.g., ERROR or DEGRADED).
class StatusConditionContainerV1beta1 {
  /// Canonical code of the condition.
  final pulumi.Input<StatusConditionCanonicalCodeContainerV1beta1>? canonicalCode;
  /// Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  final pulumi.Input<StatusConditionCodeContainerV1beta1>? code;
  /// Human-friendly representation of the condition
  final pulumi.Input<String>? message;

  /// Creates a new [StatusConditionContainerV1beta1].
  /// [canonicalCode] Canonical code of the condition.
  /// [code] Machine-friendly representation of the condition Deprecated. Use canonical_code instead.
  /// [message] Human-friendly representation of the condition
  const StatusConditionContainerV1beta1({
    this.canonicalCode,
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalCode': ?pulumi.Input.mapOptionalInputValue<StatusConditionCanonicalCodeContainerV1beta1, String>(canonicalCode, (value) => value.wireValue),
      'code': ?pulumi.Input.mapOptionalInputValue<StatusConditionCodeContainerV1beta1, String>(code, (value) => value.wireValue),
      'message': ?message,
    };
  }

  factory StatusConditionContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return StatusConditionContainerV1beta1(
      canonicalCode: (() { final guardedValue = map['canonicalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusConditionCanonicalCodeContainerV1beta1.fromValue(guardedValue as String)); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatusConditionCodeContainerV1beta1.fromValue(guardedValue as String)); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

