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

  factory VmUtilizationMetricsVmmigrationV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VmUtilizationMetricsVmmigrationV1alpha1(
      cpuAverage: (() {
        final guardedValue = map['cpuAverage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cpuAveragePercent: (() {
        final guardedValue = map['cpuAveragePercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cpuMax: (() {
        final guardedValue = map['cpuMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cpuMaxPercent: (() {
        final guardedValue = map['cpuMaxPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      diskIoRateAverage: (() {
        final guardedValue = map['diskIoRateAverage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskIoRateAverageKbps: (() {
        final guardedValue = map['diskIoRateAverageKbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskIoRateMax: (() {
        final guardedValue = map['diskIoRateMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskIoRateMaxKbps: (() {
        final guardedValue = map['diskIoRateMaxKbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      memoryAverage: (() {
        final guardedValue = map['memoryAverage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      memoryAveragePercent: (() {
        final guardedValue = map['memoryAveragePercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      memoryMax: (() {
        final guardedValue = map['memoryMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      memoryMaxPercent: (() {
        final guardedValue = map['memoryMaxPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      networkThroughputAverage: (() {
        final guardedValue = map['networkThroughputAverage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkThroughputAverageKbps: (() {
        final guardedValue = map['networkThroughputAverageKbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkThroughputMax: (() {
        final guardedValue = map['networkThroughputMax'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkThroughputMaxKbps: (() {
        final guardedValue = map['networkThroughputMaxKbps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
