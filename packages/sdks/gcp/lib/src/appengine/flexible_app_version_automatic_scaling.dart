// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_app_version_automatic_scaling_cpu_utilization.dart';
import 'flexible_app_version_automatic_scaling_disk_utilization.dart';
import 'flexible_app_version_automatic_scaling_network_utilization.dart';
import 'flexible_app_version_automatic_scaling_request_utilization.dart';

class FlexibleAppVersionAutomaticScaling {
  /// The time period that the Autoscaler should wait before it starts collecting information from a new instance.
  /// This prevents the autoscaler from collecting information when the instance is initializing,
  /// during which the collected usage would not be reliable. Default: 120s
  final pulumi.Input<String>? coolDownPeriod;
  /// Target scaling by CPU usage.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionAutomaticScalingCpuUtilization> cpuUtilization;
  /// Target scaling by disk usage.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionAutomaticScalingDiskUtilization>? diskUtilization;
  /// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.
  /// Defaults to a runtime-specific value.
  final pulumi.Input<int>? maxConcurrentRequests;
  /// Maximum number of idle instances that should be maintained for this version.
  final pulumi.Input<int>? maxIdleInstances;
  /// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  final pulumi.Input<String>? maxPendingLatency;
  /// Maximum number of instances that should be started to handle requests for this version. Default: 20
  final pulumi.Input<int>? maxTotalInstances;
  /// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  final pulumi.Input<int>? minIdleInstances;
  /// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  final pulumi.Input<String>? minPendingLatency;
  /// Minimum number of running instances that should be maintained for this version. Default: 2
  final pulumi.Input<int>? minTotalInstances;
  /// Target scaling by network usage.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionAutomaticScalingNetworkUtilization>? networkUtilization;
  /// Target scaling by request utilization.
  /// Structure is documented below.
  final pulumi.Input<FlexibleAppVersionAutomaticScalingRequestUtilization>? requestUtilization;

  /// Creates a new [FlexibleAppVersionAutomaticScaling].
  /// [coolDownPeriod] The time period that the Autoscaler should wait before it starts collecting information from a new instance.
  /// [cpuUtilization] Target scaling by CPU usage.
  /// [diskUtilization] Target scaling by disk usage.
  /// [maxConcurrentRequests] Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.
  /// [maxIdleInstances] Maximum number of idle instances that should be maintained for this version.
  /// [maxPendingLatency] Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  /// [maxTotalInstances] Maximum number of instances that should be started to handle requests for this version. Default: 20
  /// [minIdleInstances] Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  /// [minPendingLatency] Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  /// [minTotalInstances] Minimum number of running instances that should be maintained for this version. Default: 2
  /// [networkUtilization] Target scaling by network usage.
  /// [requestUtilization] Target scaling by request utilization.
  FlexibleAppVersionAutomaticScaling({
    this.coolDownPeriod,
    required this.cpuUtilization,
    this.diskUtilization,
    this.maxConcurrentRequests,
    this.maxIdleInstances,
    this.maxPendingLatency,
    this.maxTotalInstances,
    this.minIdleInstances,
    this.minPendingLatency,
    this.minTotalInstances,
    this.networkUtilization,
    this.requestUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolDownPeriod': ?coolDownPeriod,
      'cpuUtilization': pulumi.Input.mapInputValue<FlexibleAppVersionAutomaticScalingCpuUtilization, Map<String, dynamic>>(cpuUtilization, (value) => value.toMap()),
      'diskUtilization': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionAutomaticScalingDiskUtilization, Map<String, dynamic>>(diskUtilization, (value) => value.toMap()),
      'maxConcurrentRequests': ?maxConcurrentRequests,
      'maxIdleInstances': ?maxIdleInstances,
      'maxPendingLatency': ?maxPendingLatency,
      'maxTotalInstances': ?maxTotalInstances,
      'minIdleInstances': ?minIdleInstances,
      'minPendingLatency': ?minPendingLatency,
      'minTotalInstances': ?minTotalInstances,
      'networkUtilization': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionAutomaticScalingNetworkUtilization, Map<String, dynamic>>(networkUtilization, (value) => value.toMap()),
      'requestUtilization': ?pulumi.Input.mapOptionalInputValue<FlexibleAppVersionAutomaticScalingRequestUtilization, Map<String, dynamic>>(requestUtilization, (value) => value.toMap()),
    };
  }

  factory FlexibleAppVersionAutomaticScaling.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionAutomaticScaling(
      coolDownPeriod: map['coolDownPeriod'] == null ? null : (map['coolDownPeriod'] as String).input(),
      cpuUtilization: (FlexibleAppVersionAutomaticScalingCpuUtilization.fromMap((map['cpuUtilization'] as Map).cast<String, dynamic>())).input(),
      diskUtilization: map['diskUtilization'] == null ? null : (FlexibleAppVersionAutomaticScalingDiskUtilization.fromMap((map['diskUtilization'] as Map).cast<String, dynamic>())).input(),
      maxConcurrentRequests: map['maxConcurrentRequests'] == null ? null : (map['maxConcurrentRequests'] as int).input(),
      maxIdleInstances: map['maxIdleInstances'] == null ? null : (map['maxIdleInstances'] as int).input(),
      maxPendingLatency: map['maxPendingLatency'] == null ? null : (map['maxPendingLatency'] as String).input(),
      maxTotalInstances: map['maxTotalInstances'] == null ? null : (map['maxTotalInstances'] as int).input(),
      minIdleInstances: map['minIdleInstances'] == null ? null : (map['minIdleInstances'] as int).input(),
      minPendingLatency: map['minPendingLatency'] == null ? null : (map['minPendingLatency'] as String).input(),
      minTotalInstances: map['minTotalInstances'] == null ? null : (map['minTotalInstances'] as int).input(),
      networkUtilization: map['networkUtilization'] == null ? null : (FlexibleAppVersionAutomaticScalingNetworkUtilization.fromMap((map['networkUtilization'] as Map).cast<String, dynamic>())).input(),
      requestUtilization: map['requestUtilization'] == null ? null : (FlexibleAppVersionAutomaticScalingRequestUtilization.fromMap((map['requestUtilization'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

