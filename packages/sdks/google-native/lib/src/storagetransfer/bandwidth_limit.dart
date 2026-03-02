// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies a bandwidth limit for an agent pool.
class BandwidthLimit {
  /// Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  final pulumi.Input<String>? limitMbps;

  /// Creates a new [BandwidthLimit].
  /// [limitMbps] Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  BandwidthLimit({
    this.limitMbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limitMbps': ?limitMbps,
    };
  }

  factory BandwidthLimit.fromMap(Map<String, dynamic> map) {
    return BandwidthLimit(
      limitMbps: map['limitMbps'] == null ? null : (map['limitMbps'] as String).input(),
    );
  }
}

