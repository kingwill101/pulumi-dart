// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiShieldOperationFeaturesThresholds {
  /// The total number of auth-ids seen across this calculation.
  final pulumi.Input<int?>? authIdTokens;
  /// The number of data points used for the threshold suggestion calculation.
  final pulumi.Input<int?>? dataPoints;
  final pulumi.Input<String?>? lastUpdated;
  /// The p50 quantile of requests (in period_seconds).
  final pulumi.Input<int?>? p50;
  /// The p90 quantile of requests (in period_seconds).
  final pulumi.Input<int?>? p90;
  /// The p99 quantile of requests (in period_seconds).
  final pulumi.Input<int?>? p99;
  /// The period over which this threshold is suggested.
  final pulumi.Input<int?>? periodSeconds;
  /// The estimated number of requests covered by these calculations.
  final pulumi.Input<int?>? requests;
  /// The suggested threshold in requests done by the same auth*id or period*seconds.
  final pulumi.Input<int?>? suggestedThreshold;

  /// Creates a new [ApiShieldOperationFeaturesThresholds].
  /// [authIdTokens] The total number of auth-ids seen across this calculation.
  /// [dataPoints] The number of data points used for the threshold suggestion calculation.
  /// [lastUpdated] Optional.
  /// [p50] The p50 quantile of requests (in period_seconds).
  /// [p90] The p90 quantile of requests (in period_seconds).
  /// [p99] The p99 quantile of requests (in period_seconds).
  /// [periodSeconds] The period over which this threshold is suggested.
  /// [requests] The estimated number of requests covered by these calculations.
  /// [suggestedThreshold] The suggested threshold in requests done by the same auth*id or period*seconds.
  const ApiShieldOperationFeaturesThresholds({
    this.authIdTokens,
    this.dataPoints,
    this.lastUpdated,
    this.p50,
    this.p90,
    this.p99,
    this.periodSeconds,
    this.requests,
    this.suggestedThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authIdTokens': ?authIdTokens,
      'dataPoints': ?dataPoints,
      'lastUpdated': ?lastUpdated,
      'p50': ?p50,
      'p90': ?p90,
      'p99': ?p99,
      'periodSeconds': ?periodSeconds,
      'requests': ?requests,
      'suggestedThreshold': ?suggestedThreshold,
    };
  }

  factory ApiShieldOperationFeaturesThresholds.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesThresholds(
      authIdTokens: (() { final guardedValue = map['authIdTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dataPoints: (() { final guardedValue = map['dataPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      p50: (() { final guardedValue = map['p50']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      p90: (() { final guardedValue = map['p90']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      p99: (() { final guardedValue = map['p99']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      suggestedThreshold: (() { final guardedValue = map['suggestedThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
