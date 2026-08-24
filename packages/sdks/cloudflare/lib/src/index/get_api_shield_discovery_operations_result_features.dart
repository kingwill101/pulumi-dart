// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_shield_discovery_operations_result_features_traffic_stats.dart';

class GetApiShieldDiscoveryOperationsResultFeatures {
  final pulumi.Input<GetApiShieldDiscoveryOperationsResultFeaturesTrafficStats> trafficStats;

  /// Creates a new [GetApiShieldDiscoveryOperationsResultFeatures].
  /// [trafficStats] Required.
  const GetApiShieldDiscoveryOperationsResultFeatures({
    required this.trafficStats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trafficStats': pulumi.Input.mapInputValue<GetApiShieldDiscoveryOperationsResultFeaturesTrafficStats, Map<String, dynamic>>(trafficStats, (value) => value.toMap()),
    };
  }

  factory GetApiShieldDiscoveryOperationsResultFeatures.fromMap(Map<String, dynamic> map) {
    return GetApiShieldDiscoveryOperationsResultFeatures(
      trafficStats: pulumi.Input.fromValue(GetApiShieldDiscoveryOperationsResultFeaturesTrafficStats.fromMap((map['trafficStats']! as Map).cast<String, dynamic>())),
    );
  }
}
