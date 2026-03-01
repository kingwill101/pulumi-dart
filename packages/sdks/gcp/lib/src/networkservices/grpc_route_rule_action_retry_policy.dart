// ignore_for_file: unused_element, unnecessary_cast


class GrpcRouteRuleActionRetryPolicy {
  /// Specifies the allowed number of retries.
  final int? numRetries;
  /// Specifies one or more conditions when this retry policy applies.
  /// Each value may be one of: `connect-failure`, `refused-stream`, `cancelled`, `deadline-exceeded`, `resource-exhausted`, `unavailable`.
  final List<String>? retryConditions;

  /// Creates a new [GrpcRouteRuleActionRetryPolicy].
  /// [numRetries] Specifies the allowed number of retries.
  /// [retryConditions] Specifies one or more conditions when this retry policy applies.
  GrpcRouteRuleActionRetryPolicy({
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
      numRetries: map['numRetries'] == null ? null : map['numRetries'] as int,
      retryConditions: map['retryConditions'] == null ? null : (map['retryConditions'] as List).cast<String>(),
    );
  }
}

