// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_circuit_breaker_rule_failure_condition_status_code_range.dart';

class BackendCircuitBreakerRuleFailureCondition {
  /// Specifies the number of failures within the specified interval that will trigger the circuit breaker. Possible values are between `1` and `10000`.
  final pulumi.Input<int>? count;
  /// Specifies a list of error reasons to consider as failures.
  final pulumi.Input<List<String>>? errorReasons;
  /// Specifies the time window over which failures are counted, in ISO 8601 format.
  final pulumi.Input<String> intervalDuration;
  /// Specifies the percentage of failures within the specified interval that will trigger the circuit breaker. Possible values are between `1` and `100`.
  ///
  /// &gt; **Note:** Exactly one of `percentage` or `count` must be specified.
  final pulumi.Input<int>? percentage;
  /// One or more `status_code_range` blocks as defined below.
  ///
  /// &gt; **Note:** At least one of `status_code_range`, and `error_reasons` must be set.
  final pulumi.Input<List<BackendCircuitBreakerRuleFailureConditionStatusCodeRange>>? statusCodeRanges;

  /// Creates a new [BackendCircuitBreakerRuleFailureCondition].
  /// [count] Specifies the number of failures within the specified interval that will trigger the circuit breaker. Possible values are between `1` and `10000`.
  /// [errorReasons] Specifies a list of error reasons to consider as failures.
  /// [intervalDuration] Specifies the time window over which failures are counted, in ISO 8601 format.
  /// [percentage] Specifies the percentage of failures within the specified interval that will trigger the circuit breaker. Possible values are between `1` and `100`.
  /// [statusCodeRanges] One or more `status_code_range` blocks as defined below.
  const BackendCircuitBreakerRuleFailureCondition({
    this.count,
    this.errorReasons,
    required this.intervalDuration,
    this.percentage,
    this.statusCodeRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'errorReasons': ?errorReasons,
      'intervalDuration': intervalDuration,
      'percentage': ?percentage,
      'statusCodeRanges': ?pulumi.Input.mapOptionalInputValue<List<BackendCircuitBreakerRuleFailureConditionStatusCodeRange>, List<Map<String, dynamic>>>(statusCodeRanges, (value) => pulumi.Input.encodeList<BackendCircuitBreakerRuleFailureConditionStatusCodeRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BackendCircuitBreakerRuleFailureCondition.fromMap(Map<String, dynamic> map) {
    return BackendCircuitBreakerRuleFailureCondition(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      errorReasons: (() { final guardedValue = map['errorReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      intervalDuration: pulumi.Input.fromValue(map['intervalDuration'] as String),
      percentage: (() { final guardedValue = map['percentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      statusCodeRanges: (() { final guardedValue = map['statusCodeRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendCircuitBreakerRuleFailureConditionStatusCodeRange>(guardedValue, (value) => BackendCircuitBreakerRuleFailureConditionStatusCodeRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

