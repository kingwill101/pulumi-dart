// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_failure_policy_retry_strategy.dart';

/// Policy that defines the task retry logic and failure type. If no FailurePolicy is defined for a task, all its dependent tasks will not be executed (i.e, a `retry_strategy` of NONE will be applied).
class EnterpriseCrmEventbusProtoFailurePolicy {
  /// Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the initial interval for backoff.
  final pulumi.Input<String>? intervalInSeconds;
  /// Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the number of times the task will be retried if failed.
  final pulumi.Input<int>? maxNumRetries;
  /// Defines what happens to the task upon failure.
  final pulumi.Input<EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy>? retryStrategy;

  /// Creates a new [EnterpriseCrmEventbusProtoFailurePolicy].
  /// [intervalInSeconds] Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the initial interval for backoff.
  /// [maxNumRetries] Required if retry_strategy is FIXED_INTERVAL or LINEAR/EXPONENTIAL_BACKOFF/RESTART_WORKFLOW_WITH_BACKOFF. Defines the number of times the task will be retried if failed.
  /// [retryStrategy] Defines what happens to the task upon failure.
  EnterpriseCrmEventbusProtoFailurePolicy({
    this.intervalInSeconds,
    this.maxNumRetries,
    this.retryStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalInSeconds': ?intervalInSeconds,
      'maxNumRetries': ?maxNumRetries,
      'retryStrategy': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy, String>(retryStrategy, (value) => value.value),
    };
  }

  factory EnterpriseCrmEventbusProtoFailurePolicy.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoFailurePolicy(
      intervalInSeconds: map['intervalInSeconds'] == null ? null : (map['intervalInSeconds']! as String).input(),
      maxNumRetries: map['maxNumRetries'] == null ? null : (map['maxNumRetries']! as int).input(),
      retryStrategy: map['retryStrategy'] == null ? null : (EnterpriseCrmEventbusProtoFailurePolicyRetryStrategy.fromValue(map['retryStrategy']! as String)).input(),
    );
  }
}

