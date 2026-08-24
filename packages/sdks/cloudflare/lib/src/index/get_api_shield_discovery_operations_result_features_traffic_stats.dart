// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldDiscoveryOperationsResultFeaturesTrafficStats {
  final pulumi.Input<String> lastUpdated;
  /// The period in seconds these statistics were computed over
  final pulumi.Input<int> periodSeconds;
  /// The average number of requests seen during this period
  final pulumi.Input<double> requests;

  /// Creates a new [GetApiShieldDiscoveryOperationsResultFeaturesTrafficStats].
  /// [lastUpdated] Required.
  /// [periodSeconds] The period in seconds these statistics were computed over
  /// [requests] The average number of requests seen during this period
  const GetApiShieldDiscoveryOperationsResultFeaturesTrafficStats({
    required this.lastUpdated,
    required this.periodSeconds,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdated': lastUpdated,
      'periodSeconds': periodSeconds,
      'requests': requests,
    };
  }

  factory GetApiShieldDiscoveryOperationsResultFeaturesTrafficStats.fromMap(Map<String, dynamic> map) {
    return GetApiShieldDiscoveryOperationsResultFeaturesTrafficStats(
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      periodSeconds: pulumi.Input.fromValue((map['periodSeconds'] as num).toInt()),
      requests: pulumi.Input.fromValue((map['requests'] as num).toDouble()),
    );
  }
}
