// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a bandwidth limit for an agent pool.
class BandwidthLimitResponse {
  /// Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  final pulumi.Input<String> limitMbps;

  /// Creates a new [BandwidthLimitResponse].
  /// [limitMbps] Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  BandwidthLimitResponse({
    required this.limitMbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limitMbps': limitMbps,
    };
  }

  factory BandwidthLimitResponse.fromMap(Map<String, dynamic> map) {
    return BandwidthLimitResponse(
      limitMbps: (map['limitMbps'] as String).input(),
    );
  }
}

