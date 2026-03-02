// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferAgentPoolBandwidthLimit {
  /// Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  final pulumi.Input<String> limitMbps;

  /// Creates a new [TransferAgentPoolBandwidthLimit].
  /// [limitMbps] Bandwidth rate in megabytes per second, distributed across all the agents in the pool.
  TransferAgentPoolBandwidthLimit({
    required this.limitMbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limitMbps': limitMbps,
    };
  }

  factory TransferAgentPoolBandwidthLimit.fromMap(Map<String, dynamic> map) {
    return TransferAgentPoolBandwidthLimit(
      limitMbps: (map['limitMbps'] as String).input(),
    );
  }
}

