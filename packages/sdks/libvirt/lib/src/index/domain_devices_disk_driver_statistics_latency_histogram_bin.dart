// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskDriverStatisticsLatencyHistogramBin {
  final pulumi.Input<double> start;

  /// Creates a new [DomainDevicesDiskDriverStatisticsLatencyHistogramBin].
  /// [start] Required.
  const DomainDevicesDiskDriverStatisticsLatencyHistogramBin({
    required this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'start': start,
    };
  }

  factory DomainDevicesDiskDriverStatisticsLatencyHistogramBin.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriverStatisticsLatencyHistogramBin(
      start: pulumi.Input.fromValue((map['start'] as num).toDouble()),
    );
  }
}
