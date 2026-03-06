// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GrpcRouteRuleActionRetryPolicy {
  /// Specifies the allowed number of retries.
  final pulumi.Input<int>? numRetries;
  /// Specifies one or more conditions when this retry policy applies.
  /// Each value may be one of: `connect-failure`, `refused-stream`, `cancelled`, `deadline-exceeded`, `resource-exhausted`, `unavailable`.
  final pulumi.Input<List<String>>? retryConditions;

  /// Creates a new [GrpcRouteRuleActionRetryPolicy].
  /// [numRetries] Specifies the allowed number of retries.
  /// [retryConditions] Specifies one or more conditions when this retry policy applies.
  const GrpcRouteRuleActionRetryPolicy({
    this.numRetries,
    this.retryConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numRetries': ?numRetries,
      'retryConditions': ?retryConditions,
    };
  }

  factory GrpcRouteRuleActionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRuleActionRetryPolicy(
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retryConditions: (() { final guardedValue = map['retryConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

