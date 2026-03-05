// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Latency percentile rank and value.
class LatencyPercentileResponseNetworkmanagementV1beta1 {
  /// percent-th percentile of latency observed, in microseconds. Fraction of percent/100 of samples have latency lower or equal to the value of this field.
  final pulumi.Input<String> latencyMicros;
  /// Percentage of samples this data point applies to.
  final pulumi.Input<int> percent;

  /// Creates a new [LatencyPercentileResponseNetworkmanagementV1beta1].
  /// [latencyMicros] percent-th percentile of latency observed, in microseconds. Fraction of percent/100 of samples have latency lower or equal to the value of this field.
  /// [percent] Percentage of samples this data point applies to.
  LatencyPercentileResponseNetworkmanagementV1beta1({
    required this.latencyMicros,
    required this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latencyMicros': latencyMicros,
      'percent': percent,
    };
  }

  factory LatencyPercentileResponseNetworkmanagementV1beta1.fromMap(Map<String, dynamic> map) {
    return LatencyPercentileResponseNetworkmanagementV1beta1(
      latencyMicros: pulumi.Input.fromValue(map['latencyMicros'] as String),
      percent: pulumi.Input.fromValue(map['percent'] as int),
    );
  }
}

