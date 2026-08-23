// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPerformanceConfigResponseComputeV1 {
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigResponseComputeV1].
  /// [totalEgressBandwidthTier] Required.
  const NetworkPerformanceConfigResponseComputeV1({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory NetworkPerformanceConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponseComputeV1(
      totalEgressBandwidthTier: pulumi.Input.fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}
