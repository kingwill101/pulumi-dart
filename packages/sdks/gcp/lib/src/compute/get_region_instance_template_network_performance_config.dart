// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateNetworkPerformanceConfig {
  /// The egress bandwidth tier for the instance.
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [GetRegionInstanceTemplateNetworkPerformanceConfig].
  /// [totalEgressBandwidthTier] The egress bandwidth tier for the instance.
  GetRegionInstanceTemplateNetworkPerformanceConfig({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory GetRegionInstanceTemplateNetworkPerformanceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateNetworkPerformanceConfig(
      totalEgressBandwidthTier: pulumi.Input.fromValue(
        map['totalEgressBandwidthTier'] as String,
      ),
    );
  }
}
