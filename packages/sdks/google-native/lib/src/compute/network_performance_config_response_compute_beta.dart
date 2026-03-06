// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPerformanceConfigResponseComputeBeta {
  final pulumi.Input<String> totalEgressBandwidthTier;

  /// Creates a new [NetworkPerformanceConfigResponseComputeBeta].
  /// [totalEgressBandwidthTier] Required.
  const NetworkPerformanceConfigResponseComputeBeta({
    required this.totalEgressBandwidthTier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalEgressBandwidthTier': totalEgressBandwidthTier,
    };
  }

  factory NetworkPerformanceConfigResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return NetworkPerformanceConfigResponseComputeBeta(
      totalEgressBandwidthTier: pulumi.Input.fromValue(map['totalEgressBandwidthTier'] as String),
    );
  }
}

