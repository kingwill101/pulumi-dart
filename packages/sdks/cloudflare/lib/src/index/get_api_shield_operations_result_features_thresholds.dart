// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationsResultFeaturesThresholds {
  /// The total number of auth-ids seen across this calculation.
  final pulumi.Input<int> authIdTokens;
  /// The number of data points used for the threshold suggestion calculation.
  final pulumi.Input<int> dataPoints;
  final pulumi.Input<String> lastUpdated;
  /// The p50 quantile of requests (in period_seconds).
  final pulumi.Input<int> p50;
  /// The p90 quantile of requests (in period_seconds).
  final pulumi.Input<int> p90;
  /// The p99 quantile of requests (in period_seconds).
  final pulumi.Input<int> p99;
  /// The period over which this threshold is suggested.
  final pulumi.Input<int> periodSeconds;
  /// The estimated number of requests covered by these calculations.
  final pulumi.Input<int> requests;
  /// The suggested threshold in requests done by the same auth*id or period*seconds.
  final pulumi.Input<int> suggestedThreshold;

  /// Creates a new [GetApiShieldOperationsResultFeaturesThresholds].
  /// [authIdTokens] The total number of auth-ids seen across this calculation.
  /// [dataPoints] The number of data points used for the threshold suggestion calculation.
  /// [lastUpdated] Required.
  /// [p50] The p50 quantile of requests (in period_seconds).
  /// [p90] The p90 quantile of requests (in period_seconds).
  /// [p99] The p99 quantile of requests (in period_seconds).
  /// [periodSeconds] The period over which this threshold is suggested.
  /// [requests] The estimated number of requests covered by these calculations.
  /// [suggestedThreshold] The suggested threshold in requests done by the same auth*id or period*seconds.
  const GetApiShieldOperationsResultFeaturesThresholds({
    required this.authIdTokens,
    required this.dataPoints,
    required this.lastUpdated,
    required this.p50,
    required this.p90,
    required this.p99,
    required this.periodSeconds,
    required this.requests,
    required this.suggestedThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authIdTokens': authIdTokens,
      'dataPoints': dataPoints,
      'lastUpdated': lastUpdated,
      'p50': p50,
      'p90': p90,
      'p99': p99,
      'periodSeconds': periodSeconds,
      'requests': requests,
      'suggestedThreshold': suggestedThreshold,
    };
  }

  factory GetApiShieldOperationsResultFeaturesThresholds.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationsResultFeaturesThresholds(
      authIdTokens: pulumi.Input.fromValue((map['authIdTokens'] as num).toInt()),
      dataPoints: pulumi.Input.fromValue((map['dataPoints'] as num).toInt()),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      p50: pulumi.Input.fromValue((map['p50'] as num).toInt()),
      p90: pulumi.Input.fromValue((map['p90'] as num).toInt()),
      p99: pulumi.Input.fromValue((map['p99'] as num).toInt()),
      periodSeconds: pulumi.Input.fromValue((map['periodSeconds'] as num).toInt()),
      requests: pulumi.Input.fromValue((map['requests'] as num).toInt()),
      suggestedThreshold: pulumi.Input.fromValue((map['suggestedThreshold'] as num).toInt()),
    );
  }
}
