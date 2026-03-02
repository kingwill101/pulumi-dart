// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_circuit_breaker_rule_failure_condition.dart';

class BackendCircuitBreakerRule {
  /// Specifies whether the circuit breaker should honor `Retry-After` requests. Defaults to `false`.
  final pulumi.Input<bool>? acceptRetryAfterEnabled;
  /// A `failure_condition` block as defined below.
  final pulumi.Input<BackendCircuitBreakerRuleFailureCondition> failureCondition;
  /// The name of the circuit breaker rule.
  final pulumi.Input<String> name;
  /// Specifies the duration for which the circuit remains open before retrying, in ISO 8601 format.
  final pulumi.Input<String> tripDuration;

  /// Creates a new [BackendCircuitBreakerRule].
  /// [acceptRetryAfterEnabled] Specifies whether the circuit breaker should honor `Retry-After` requests. Defaults to `false`.
  /// [failureCondition] A `failure_condition` block as defined below.
  /// [name] The name of the circuit breaker rule.
  /// [tripDuration] Specifies the duration for which the circuit remains open before retrying, in ISO 8601 format.
  BackendCircuitBreakerRule({
    this.acceptRetryAfterEnabled,
    required this.failureCondition,
    required this.name,
    required this.tripDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptRetryAfterEnabled': ?acceptRetryAfterEnabled,
      'failureCondition': pulumi.Input.mapInputValue<BackendCircuitBreakerRuleFailureCondition, Map<String, dynamic>>(failureCondition, (value) => value.toMap()),
      'name': name,
      'tripDuration': tripDuration,
    };
  }

  factory BackendCircuitBreakerRule.fromMap(Map<String, dynamic> map) {
    return BackendCircuitBreakerRule(
      acceptRetryAfterEnabled: map['acceptRetryAfterEnabled'] == null ? null : (map['acceptRetryAfterEnabled']! as bool).input(),
      failureCondition: (BackendCircuitBreakerRuleFailureCondition.fromMap((map['failureCondition'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      tripDuration: (map['tripDuration'] as String).input(),
    );
  }
}

