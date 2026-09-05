// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_driver_statistics_latency_histogram.dart';
import 'domain_devices_disk_driver_statistics_statistic.dart';

class DomainDevicesDiskDriverStatistics {
  final pulumi.Input<List<DomainDevicesDiskDriverStatisticsLatencyHistogram>?>? latencyHistograms;
  final pulumi.Input<List<DomainDevicesDiskDriverStatisticsStatistic>?>? statistics;

  /// Creates a new [DomainDevicesDiskDriverStatistics].
  /// [latencyHistograms] Optional.
  /// [statistics] Optional.
  const DomainDevicesDiskDriverStatistics({
    this.latencyHistograms,
    this.statistics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latencyHistograms': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskDriverStatisticsLatencyHistogram>, List<Map<String, dynamic>>>(latencyHistograms, (value) => pulumi.Input.encodeList<DomainDevicesDiskDriverStatisticsLatencyHistogram, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statistics': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskDriverStatisticsStatistic>, List<Map<String, dynamic>>>(statistics, (value) => pulumi.Input.encodeList<DomainDevicesDiskDriverStatisticsStatistic, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskDriverStatistics.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriverStatistics(
      latencyHistograms: (() { final guardedValue = map['latencyHistograms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskDriverStatisticsLatencyHistogram>(guardedValue, (value) => DomainDevicesDiskDriverStatisticsLatencyHistogram.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statistics: (() { final guardedValue = map['statistics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesDiskDriverStatisticsStatistic>(guardedValue, (value) => DomainDevicesDiskDriverStatisticsStatistic.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
