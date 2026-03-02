// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Utilization metrics values for a single VM.
class VmUtilizationMetricsResponseVmmigrationV1alpha1 {
  /// Average CPU usage, percent.
  final pulumi.Input<int> cpuAverage;
  /// Average CPU usage, percent.
  final pulumi.Input<int> cpuAveragePercent;
  /// Max CPU usage, percent.
  final pulumi.Input<int> cpuMax;
  /// Max CPU usage, percent.
  final pulumi.Input<int> cpuMaxPercent;
  /// Average disk IO rate, in kilobytes per second.
  final pulumi.Input<String> diskIoRateAverage;
  /// Average disk IO rate, in kilobytes per second.
  final pulumi.Input<String> diskIoRateAverageKbps;
  /// Max disk IO rate, in kilobytes per second.
  final pulumi.Input<String> diskIoRateMax;
  /// Max disk IO rate, in kilobytes per second.
  final pulumi.Input<String> diskIoRateMaxKbps;
  /// Average memory usage, percent.
  final pulumi.Input<int> memoryAverage;
  /// Average memory usage, percent.
  final pulumi.Input<int> memoryAveragePercent;
  /// Max memory usage, percent.
  final pulumi.Input<int> memoryMax;
  /// Max memory usage, percent.
  final pulumi.Input<int> memoryMaxPercent;
  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String> networkThroughputAverage;
  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String> networkThroughputAverageKbps;
  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String> networkThroughputMax;
  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String> networkThroughputMaxKbps;

  /// Creates a new [VmUtilizationMetricsResponseVmmigrationV1alpha1].
  /// [cpuAverage] Average CPU usage, percent.
  /// [cpuAveragePercent] Average CPU usage, percent.
  /// [cpuMax] Max CPU usage, percent.
  /// [cpuMaxPercent] Max CPU usage, percent.
  /// [diskIoRateAverage] Average disk IO rate, in kilobytes per second.
  /// [diskIoRateAverageKbps] Average disk IO rate, in kilobytes per second.
  /// [diskIoRateMax] Max disk IO rate, in kilobytes per second.
  /// [diskIoRateMaxKbps] Max disk IO rate, in kilobytes per second.
  /// [memoryAverage] Average memory usage, percent.
  /// [memoryAveragePercent] Average memory usage, percent.
  /// [memoryMax] Max memory usage, percent.
  /// [memoryMaxPercent] Max memory usage, percent.
  /// [networkThroughputAverage] Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  /// [networkThroughputAverageKbps] Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  /// [networkThroughputMax] Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  /// [networkThroughputMaxKbps] Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  VmUtilizationMetricsResponseVmmigrationV1alpha1({
    required this.cpuAverage,
    required this.cpuAveragePercent,
    required this.cpuMax,
    required this.cpuMaxPercent,
    required this.diskIoRateAverage,
    required this.diskIoRateAverageKbps,
    required this.diskIoRateMax,
    required this.diskIoRateMaxKbps,
    required this.memoryAverage,
    required this.memoryAveragePercent,
    required this.memoryMax,
    required this.memoryMaxPercent,
    required this.networkThroughputAverage,
    required this.networkThroughputAverageKbps,
    required this.networkThroughputMax,
    required this.networkThroughputMaxKbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuAverage': cpuAverage,
      'cpuAveragePercent': cpuAveragePercent,
      'cpuMax': cpuMax,
      'cpuMaxPercent': cpuMaxPercent,
      'diskIoRateAverage': diskIoRateAverage,
      'diskIoRateAverageKbps': diskIoRateAverageKbps,
      'diskIoRateMax': diskIoRateMax,
      'diskIoRateMaxKbps': diskIoRateMaxKbps,
      'memoryAverage': memoryAverage,
      'memoryAveragePercent': memoryAveragePercent,
      'memoryMax': memoryMax,
      'memoryMaxPercent': memoryMaxPercent,
      'networkThroughputAverage': networkThroughputAverage,
      'networkThroughputAverageKbps': networkThroughputAverageKbps,
      'networkThroughputMax': networkThroughputMax,
      'networkThroughputMaxKbps': networkThroughputMaxKbps,
    };
  }

  factory VmUtilizationMetricsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return VmUtilizationMetricsResponseVmmigrationV1alpha1(
      cpuAverage: (map['cpuAverage'] as int).input(),
      cpuAveragePercent: (map['cpuAveragePercent'] as int).input(),
      cpuMax: (map['cpuMax'] as int).input(),
      cpuMaxPercent: (map['cpuMaxPercent'] as int).input(),
      diskIoRateAverage: (map['diskIoRateAverage'] as String).input(),
      diskIoRateAverageKbps: (map['diskIoRateAverageKbps'] as String).input(),
      diskIoRateMax: (map['diskIoRateMax'] as String).input(),
      diskIoRateMaxKbps: (map['diskIoRateMaxKbps'] as String).input(),
      memoryAverage: (map['memoryAverage'] as int).input(),
      memoryAveragePercent: (map['memoryAveragePercent'] as int).input(),
      memoryMax: (map['memoryMax'] as int).input(),
      memoryMaxPercent: (map['memoryMaxPercent'] as int).input(),
      networkThroughputAverage: (map['networkThroughputAverage'] as String).input(),
      networkThroughputAverageKbps: (map['networkThroughputAverageKbps'] as String).input(),
      networkThroughputMax: (map['networkThroughputMax'] as String).input(),
      networkThroughputMaxKbps: (map['networkThroughputMaxKbps'] as String).input(),
    );
  }
}

