// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleActionRetryPolicy {
  /// Specifies the allowed number of retries.
  final pulumi.Input<int?>? numRetries;
  /// Specifies a non-zero timeout per retry attempt. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String?>? perTryTimeout;
  /// Specifies one or more conditions when this retry policy applies.
  final pulumi.Input<List<String>?>? retryConditions;

  /// Creates a new [HttpRouteRuleActionRetryPolicy].
  /// [numRetries] Specifies the allowed number of retries.
  /// [perTryTimeout] Specifies a non-zero timeout per retry attempt. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// [retryConditions] Specifies one or more conditions when this retry policy applies.
  const HttpRouteRuleActionRetryPolicy({
    this.numRetries,
    this.perTryTimeout,
    this.retryConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numRetries': ?numRetries,
      'perTryTimeout': ?perTryTimeout,
      'retryConditions': ?retryConditions,
    };
  }

  factory HttpRouteRuleActionRetryPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionRetryPolicy(
      numRetries: (() { final guardedValue = map['numRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      perTryTimeout: (() { final guardedValue = map['perTryTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryConditions: (() { final guardedValue = map['retryConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
