// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleRatelimit {
  /// Characteristics of the request on which the rate limit counter will be incremented.
  final pulumi.Input<List<String>> characteristics;
  /// An expression that defines when the rate limit counter should be incremented. It defaults to the same as the rule's expression.
  final pulumi.Input<String> countingExpression;
  /// Period of time in seconds after which the action will be disabled following its first execution.
  final pulumi.Input<int> mitigationTimeout;
  /// Period in seconds over which the counter is being incremented.
  final pulumi.Input<int> period;
  /// The threshold of requests per period after which the action will be executed for the first time.
  final pulumi.Input<int> requestsPerPeriod;
  /// Whether counting is only performed when an origin is reached.
  final pulumi.Input<bool> requestsToOrigin;
  /// The score threshold per period for which the action will be executed the first time.
  final pulumi.Input<int> scorePerPeriod;
  /// A response header name provided by the origin, which contains the score to increment rate limit counter with.
  final pulumi.Input<String> scoreResponseHeaderName;

  /// Creates a new [GetRulesetRuleRatelimit].
  /// [characteristics] Characteristics of the request on which the rate limit counter will be incremented.
  /// [countingExpression] An expression that defines when the rate limit counter should be incremented. It defaults to the same as the rule's expression.
  /// [mitigationTimeout] Period of time in seconds after which the action will be disabled following its first execution.
  /// [period] Period in seconds over which the counter is being incremented.
  /// [requestsPerPeriod] The threshold of requests per period after which the action will be executed for the first time.
  /// [requestsToOrigin] Whether counting is only performed when an origin is reached.
  /// [scorePerPeriod] The score threshold per period for which the action will be executed the first time.
  /// [scoreResponseHeaderName] A response header name provided by the origin, which contains the score to increment rate limit counter with.
  const GetRulesetRuleRatelimit({
    required this.characteristics,
    required this.countingExpression,
    required this.mitigationTimeout,
    required this.period,
    required this.requestsPerPeriod,
    required this.requestsToOrigin,
    required this.scorePerPeriod,
    required this.scoreResponseHeaderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characteristics': characteristics,
      'countingExpression': countingExpression,
      'mitigationTimeout': mitigationTimeout,
      'period': period,
      'requestsPerPeriod': requestsPerPeriod,
      'requestsToOrigin': requestsToOrigin,
      'scorePerPeriod': scorePerPeriod,
      'scoreResponseHeaderName': scoreResponseHeaderName,
    };
  }

  factory GetRulesetRuleRatelimit.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleRatelimit(
      characteristics: pulumi.Input.fromValue((map['characteristics'] as List).cast<String>()),
      countingExpression: pulumi.Input.fromValue(map['countingExpression'] as String),
      mitigationTimeout: pulumi.Input.fromValue((map['mitigationTimeout'] as num).toInt()),
      period: pulumi.Input.fromValue((map['period'] as num).toInt()),
      requestsPerPeriod: pulumi.Input.fromValue((map['requestsPerPeriod'] as num).toInt()),
      requestsToOrigin: pulumi.Input.fromValue(map['requestsToOrigin'] as bool),
      scorePerPeriod: pulumi.Input.fromValue((map['scorePerPeriod'] as num).toInt()),
      scoreResponseHeaderName: pulumi.Input.fromValue(map['scoreResponseHeaderName'] as String),
    );
  }
}
