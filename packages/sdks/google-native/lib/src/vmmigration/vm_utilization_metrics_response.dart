// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Utilization metrics values for a single VM.
class VmUtilizationMetricsResponse {
  /// Average CPU usage, percent.
  final pulumi.Input<int> cpuAveragePercent;

  /// Max CPU usage, percent.
  final pulumi.Input<int> cpuMaxPercent;

  /// Average disk IO rate, in kilobytes per second.
  final pulumi.Input<String> diskIoRateAverageKbps;

  /// Max disk IO rate, in kilobytes per second.
  final pulumi.Input<String> diskIoRateMaxKbps;

  /// Average memory usage, percent.
  final pulumi.Input<int> memoryAveragePercent;

  /// Max memory usage, percent.
  final pulumi.Input<int> memoryMaxPercent;

  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String> networkThroughputAverageKbps;

  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String> networkThroughputMaxKbps;

  /// Creates a new [VmUtilizationMetricsResponse].
  /// [cpuAveragePercent] Average CPU usage, percent.
  /// [cpuMaxPercent] Max CPU usage, percent.
  /// [diskIoRateAverageKbps] Average disk IO rate, in kilobytes per second.
  /// [diskIoRateMaxKbps] Max disk IO rate, in kilobytes per second.
  /// [memoryAveragePercent] Average memory usage, percent.
  /// [memoryMaxPercent] Max memory usage, percent.
  /// [networkThroughputAverageKbps] Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  /// [networkThroughputMaxKbps] Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  VmUtilizationMetricsResponse({
    required this.cpuAveragePercent,
    required this.cpuMaxPercent,
    required this.diskIoRateAverageKbps,
    required this.diskIoRateMaxKbps,
    required this.memoryAveragePercent,
    required this.memoryMaxPercent,
    required this.networkThroughputAverageKbps,
    required this.networkThroughputMaxKbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuAveragePercent': cpuAveragePercent,
      'cpuMaxPercent': cpuMaxPercent,
      'diskIoRateAverageKbps': diskIoRateAverageKbps,
      'diskIoRateMaxKbps': diskIoRateMaxKbps,
      'memoryAveragePercent': memoryAveragePercent,
      'memoryMaxPercent': memoryMaxPercent,
      'networkThroughputAverageKbps': networkThroughputAverageKbps,
      'networkThroughputMaxKbps': networkThroughputMaxKbps,
    };
  }

  factory VmUtilizationMetricsResponse.fromMap(Map<String, dynamic> map) {
    return VmUtilizationMetricsResponse(
      cpuAveragePercent: pulumi.Input.fromValue(
        map['cpuAveragePercent'] as int,
      ),
      cpuMaxPercent: pulumi.Input.fromValue(map['cpuMaxPercent'] as int),
      diskIoRateAverageKbps: pulumi.Input.fromValue(
        map['diskIoRateAverageKbps'] as String,
      ),
      diskIoRateMaxKbps: pulumi.Input.fromValue(
        map['diskIoRateMaxKbps'] as String,
      ),
      memoryAveragePercent: pulumi.Input.fromValue(
        map['memoryAveragePercent'] as int,
      ),
      memoryMaxPercent: pulumi.Input.fromValue(map['memoryMaxPercent'] as int),
      networkThroughputAverageKbps: pulumi.Input.fromValue(
        map['networkThroughputAverageKbps'] as String,
      ),
      networkThroughputMaxKbps: pulumi.Input.fromValue(
        map['networkThroughputMaxKbps'] as String,
      ),
    );
  }
}
