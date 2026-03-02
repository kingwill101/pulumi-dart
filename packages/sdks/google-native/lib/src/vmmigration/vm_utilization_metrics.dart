// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Utilization metrics values for a single VM.
class VmUtilizationMetrics {
  /// Average CPU usage, percent.
  final pulumi.Input<int>? cpuAveragePercent;
  /// Max CPU usage, percent.
  final pulumi.Input<int>? cpuMaxPercent;
  /// Average disk IO rate, in kilobytes per second.
  final pulumi.Input<String>? diskIoRateAverageKbps;
  /// Max disk IO rate, in kilobytes per second.
  final pulumi.Input<String>? diskIoRateMaxKbps;
  /// Average memory usage, percent.
  final pulumi.Input<int>? memoryAveragePercent;
  /// Max memory usage, percent.
  final pulumi.Input<int>? memoryMaxPercent;
  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String>? networkThroughputAverageKbps;
  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String>? networkThroughputMaxKbps;

  /// Creates a new [VmUtilizationMetrics].
  /// [cpuAveragePercent] Average CPU usage, percent.
  /// [cpuMaxPercent] Max CPU usage, percent.
  /// [diskIoRateAverageKbps] Average disk IO rate, in kilobytes per second.
  /// [diskIoRateMaxKbps] Max disk IO rate, in kilobytes per second.
  /// [memoryAveragePercent] Average memory usage, percent.
  /// [memoryMaxPercent] Max memory usage, percent.
  /// [networkThroughputAverageKbps] Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  /// [networkThroughputMaxKbps] Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  VmUtilizationMetrics({
    this.cpuAveragePercent,
    this.cpuMaxPercent,
    this.diskIoRateAverageKbps,
    this.diskIoRateMaxKbps,
    this.memoryAveragePercent,
    this.memoryMaxPercent,
    this.networkThroughputAverageKbps,
    this.networkThroughputMaxKbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuAveragePercent': ?cpuAveragePercent,
      'cpuMaxPercent': ?cpuMaxPercent,
      'diskIoRateAverageKbps': ?diskIoRateAverageKbps,
      'diskIoRateMaxKbps': ?diskIoRateMaxKbps,
      'memoryAveragePercent': ?memoryAveragePercent,
      'memoryMaxPercent': ?memoryMaxPercent,
      'networkThroughputAverageKbps': ?networkThroughputAverageKbps,
      'networkThroughputMaxKbps': ?networkThroughputMaxKbps,
    };
  }

  factory VmUtilizationMetrics.fromMap(Map<String, dynamic> map) {
    return VmUtilizationMetrics(
      cpuAveragePercent: map['cpuAveragePercent'] == null ? null : (map['cpuAveragePercent']! as int).input(),
      cpuMaxPercent: map['cpuMaxPercent'] == null ? null : (map['cpuMaxPercent']! as int).input(),
      diskIoRateAverageKbps: map['diskIoRateAverageKbps'] == null ? null : (map['diskIoRateAverageKbps']! as String).input(),
      diskIoRateMaxKbps: map['diskIoRateMaxKbps'] == null ? null : (map['diskIoRateMaxKbps']! as String).input(),
      memoryAveragePercent: map['memoryAveragePercent'] == null ? null : (map['memoryAveragePercent']! as int).input(),
      memoryMaxPercent: map['memoryMaxPercent'] == null ? null : (map['memoryMaxPercent']! as int).input(),
      networkThroughputAverageKbps: map['networkThroughputAverageKbps'] == null ? null : (map['networkThroughputAverageKbps']! as String).input(),
      networkThroughputMaxKbps: map['networkThroughputMaxKbps'] == null ? null : (map['networkThroughputMaxKbps']! as String).input(),
    );
  }
}

