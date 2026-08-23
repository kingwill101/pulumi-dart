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
  const VmUtilizationMetrics({
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
      cpuAveragePercent: (() { final guardedValue = map['cpuAveragePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuMaxPercent: (() { final guardedValue = map['cpuMaxPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskIoRateAverageKbps: (() { final guardedValue = map['diskIoRateAverageKbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskIoRateMaxKbps: (() { final guardedValue = map['diskIoRateMaxKbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryAveragePercent: (() { final guardedValue = map['memoryAveragePercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memoryMaxPercent: (() { final guardedValue = map['memoryMaxPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      networkThroughputAverageKbps: (() { final guardedValue = map['networkThroughputAverageKbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkThroughputMaxKbps: (() { final guardedValue = map['networkThroughputMaxKbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
