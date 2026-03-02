// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'latency_percentile_response_networkmanagement_v1beta1.dart';

/// Describes measured latency distribution.
class LatencyDistributionResponseNetworkmanagementV1beta1 {
  /// Representative latency percentiles.
  final pulumi.Input<List<LatencyPercentileResponseNetworkmanagementV1beta1>> latencyPercentiles;

  /// Creates a new [LatencyDistributionResponseNetworkmanagementV1beta1].
  /// [latencyPercentiles] Representative latency percentiles.
  LatencyDistributionResponseNetworkmanagementV1beta1({
    required this.latencyPercentiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latencyPercentiles': pulumi.Input.mapInputValue<List<LatencyPercentileResponseNetworkmanagementV1beta1>, List<Map<String, dynamic>>>(latencyPercentiles, (value) => pulumi.Input.encodeList<LatencyPercentileResponseNetworkmanagementV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LatencyDistributionResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return LatencyDistributionResponseNetworkmanagementV1beta1(
      latencyPercentiles: (pulumi.Input.decodeList<LatencyPercentileResponseNetworkmanagementV1beta1>(map['latencyPercentiles'], (value) => LatencyPercentileResponseNetworkmanagementV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

