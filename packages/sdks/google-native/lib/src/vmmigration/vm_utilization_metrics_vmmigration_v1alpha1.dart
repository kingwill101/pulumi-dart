// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Utilization metrics values for a single VM.
class VmUtilizationMetricsVmmigrationV1alpha1 {
  /// Average CPU usage, percent.
  final pulumi.Input<int>? cpuAverage;
  /// Average CPU usage, percent.
  final pulumi.Input<int>? cpuAveragePercent;
  /// Max CPU usage, percent.
  final pulumi.Input<int>? cpuMax;
  /// Max CPU usage, percent.
  final pulumi.Input<int>? cpuMaxPercent;
  /// Average disk IO rate, in kilobytes per second.
  final pulumi.Input<String>? diskIoRateAverage;
  /// Average disk IO rate, in kilobytes per second.
  final pulumi.Input<String>? diskIoRateAverageKbps;
  /// Max disk IO rate, in kilobytes per second.
  final pulumi.Input<String>? diskIoRateMax;
  /// Max disk IO rate, in kilobytes per second.
  final pulumi.Input<String>? diskIoRateMaxKbps;
  /// Average memory usage, percent.
  final pulumi.Input<int>? memoryAverage;
  /// Average memory usage, percent.
  final pulumi.Input<int>? memoryAveragePercent;
  /// Max memory usage, percent.
  final pulumi.Input<int>? memoryMax;
  /// Max memory usage, percent.
  final pulumi.Input<int>? memoryMaxPercent;
  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String>? networkThroughputAverage;
  /// Average network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String>? networkThroughputAverageKbps;
  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String>? networkThroughputMax;
  /// Max network throughput (combined transmit-rates and receive-rates), in kilobytes per second.
  final pulumi.Input<String>? networkThroughputMaxKbps;

  /// Creates a new [VmUtilizationMetricsVmmigrationV1alpha1].
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
  VmUtilizationMetricsVmmigrationV1alpha1({
    this.cpuAverage,
    this.cpuAveragePercent,
    this.cpuMax,
    this.cpuMaxPercent,
    this.diskIoRateAverage,
    this.diskIoRateAverageKbps,
    this.diskIoRateMax,
    this.diskIoRateMaxKbps,
    this.memoryAverage,
    this.memoryAveragePercent,
    this.memoryMax,
    this.memoryMaxPercent,
    this.networkThroughputAverage,
    this.networkThroughputAverageKbps,
    this.networkThroughputMax,
    this.networkThroughputMaxKbps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuAverage': ?cpuAverage,
      'cpuAveragePercent': ?cpuAveragePercent,
      'cpuMax': ?cpuMax,
      'cpuMaxPercent': ?cpuMaxPercent,
      'diskIoRateAverage': ?diskIoRateAverage,
      'diskIoRateAverageKbps': ?diskIoRateAverageKbps,
      'diskIoRateMax': ?diskIoRateMax,
      'diskIoRateMaxKbps': ?diskIoRateMaxKbps,
      'memoryAverage': ?memoryAverage,
      'memoryAveragePercent': ?memoryAveragePercent,
      'memoryMax': ?memoryMax,
      'memoryMaxPercent': ?memoryMaxPercent,
      'networkThroughputAverage': ?networkThroughputAverage,
      'networkThroughputAverageKbps': ?networkThroughputAverageKbps,
      'networkThroughputMax': ?networkThroughputMax,
      'networkThroughputMaxKbps': ?networkThroughputMaxKbps,
    };
  }

  factory VmUtilizationMetricsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return VmUtilizationMetricsVmmigrationV1alpha1(
      cpuAverage: map['cpuAverage'] == null ? null : (map['cpuAverage']! as int).input(),
      cpuAveragePercent: map['cpuAveragePercent'] == null ? null : (map['cpuAveragePercent']! as int).input(),
      cpuMax: map['cpuMax'] == null ? null : (map['cpuMax']! as int).input(),
      cpuMaxPercent: map['cpuMaxPercent'] == null ? null : (map['cpuMaxPercent']! as int).input(),
      diskIoRateAverage: map['diskIoRateAverage'] == null ? null : (map['diskIoRateAverage']! as String).input(),
      diskIoRateAverageKbps: map['diskIoRateAverageKbps'] == null ? null : (map['diskIoRateAverageKbps']! as String).input(),
      diskIoRateMax: map['diskIoRateMax'] == null ? null : (map['diskIoRateMax']! as String).input(),
      diskIoRateMaxKbps: map['diskIoRateMaxKbps'] == null ? null : (map['diskIoRateMaxKbps']! as String).input(),
      memoryAverage: map['memoryAverage'] == null ? null : (map['memoryAverage']! as int).input(),
      memoryAveragePercent: map['memoryAveragePercent'] == null ? null : (map['memoryAveragePercent']! as int).input(),
      memoryMax: map['memoryMax'] == null ? null : (map['memoryMax']! as int).input(),
      memoryMaxPercent: map['memoryMaxPercent'] == null ? null : (map['memoryMaxPercent']! as int).input(),
      networkThroughputAverage: map['networkThroughputAverage'] == null ? null : (map['networkThroughputAverage']! as String).input(),
      networkThroughputAverageKbps: map['networkThroughputAverageKbps'] == null ? null : (map['networkThroughputAverageKbps']! as String).input(),
      networkThroughputMax: map['networkThroughputMax'] == null ? null : (map['networkThroughputMax']! as String).input(),
      networkThroughputMaxKbps: map['networkThroughputMaxKbps'] == null ? null : (map['networkThroughputMaxKbps']! as String).input(),
    );
  }
}

