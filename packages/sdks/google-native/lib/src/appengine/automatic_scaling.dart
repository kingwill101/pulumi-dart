// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cpu_utilization.dart';
import 'disk_utilization.dart';
import 'network_utilization.dart';
import 'request_utilization.dart';
import 'standard_scheduler_settings.dart';

/// Automatic scaling is based on request rate, response latencies, and other application metrics.
class AutomaticScaling {
  /// The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  final pulumi.Input<String>? coolDownPeriod;
  /// Target scaling by CPU usage.
  final pulumi.Input<CpuUtilization>? cpuUtilization;
  /// Target scaling by disk usage.
  final pulumi.Input<DiskUtilization>? diskUtilization;
  /// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.Defaults to a runtime-specific value.
  final pulumi.Input<int>? maxConcurrentRequests;
  /// Maximum number of idle instances that should be maintained for this version.
  final pulumi.Input<int>? maxIdleInstances;
  /// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  final pulumi.Input<String>? maxPendingLatency;
  /// Maximum number of instances that should be started to handle requests for this version.
  final pulumi.Input<int>? maxTotalInstances;
  /// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  final pulumi.Input<int>? minIdleInstances;
  /// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  final pulumi.Input<String>? minPendingLatency;
  /// Minimum number of running instances that should be maintained for this version.
  final pulumi.Input<int>? minTotalInstances;
  /// Target scaling by network usage.
  final pulumi.Input<NetworkUtilization>? networkUtilization;
  /// Target scaling by request utilization.
  final pulumi.Input<RequestUtilization>? requestUtilization;
  /// Scheduler settings for standard environment.
  final pulumi.Input<StandardSchedulerSettings>? standardSchedulerSettings;

  /// Creates a new [AutomaticScaling].
  /// [coolDownPeriod] The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  /// [cpuUtilization] Target scaling by CPU usage.
  /// [diskUtilization] Target scaling by disk usage.
  /// [maxConcurrentRequests] Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.Defaults to a runtime-specific value.
  /// [maxIdleInstances] Maximum number of idle instances that should be maintained for this version.
  /// [maxPendingLatency] Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  /// [maxTotalInstances] Maximum number of instances that should be started to handle requests for this version.
  /// [minIdleInstances] Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  /// [minPendingLatency] Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  /// [minTotalInstances] Minimum number of running instances that should be maintained for this version.
  /// [networkUtilization] Target scaling by network usage.
  /// [requestUtilization] Target scaling by request utilization.
  /// [standardSchedulerSettings] Scheduler settings for standard environment.
  AutomaticScaling({
    this.coolDownPeriod,
    this.cpuUtilization,
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
    this.standardSchedulerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolDownPeriod': ?coolDownPeriod,
      'cpuUtilization': ?pulumi.Input.mapOptionalInputValue<CpuUtilization, Map<String, dynamic>>(cpuUtilization, (value) => value.toMap()),
      'diskUtilization': ?pulumi.Input.mapOptionalInputValue<DiskUtilization, Map<String, dynamic>>(diskUtilization, (value) => value.toMap()),
      'maxConcurrentRequests': ?maxConcurrentRequests,
      'maxIdleInstances': ?maxIdleInstances,
      'maxPendingLatency': ?maxPendingLatency,
      'maxTotalInstances': ?maxTotalInstances,
      'minIdleInstances': ?minIdleInstances,
      'minPendingLatency': ?minPendingLatency,
      'minTotalInstances': ?minTotalInstances,
      'networkUtilization': ?pulumi.Input.mapOptionalInputValue<NetworkUtilization, Map<String, dynamic>>(networkUtilization, (value) => value.toMap()),
      'requestUtilization': ?pulumi.Input.mapOptionalInputValue<RequestUtilization, Map<String, dynamic>>(requestUtilization, (value) => value.toMap()),
      'standardSchedulerSettings': ?pulumi.Input.mapOptionalInputValue<StandardSchedulerSettings, Map<String, dynamic>>(standardSchedulerSettings, (value) => value.toMap()),
    };
  }

  factory AutomaticScaling.fromMap(Map<String, dynamic> map) {
    return AutomaticScaling(
      coolDownPeriod: map['coolDownPeriod'] == null ? null : (map['coolDownPeriod'] as String).input(),
      cpuUtilization: map['cpuUtilization'] == null ? null : (CpuUtilization.fromMap((map['cpuUtilization'] as Map).cast<String, dynamic>())).input(),
      diskUtilization: map['diskUtilization'] == null ? null : (DiskUtilization.fromMap((map['diskUtilization'] as Map).cast<String, dynamic>())).input(),
      maxConcurrentRequests: map['maxConcurrentRequests'] == null ? null : (map['maxConcurrentRequests'] as int).input(),
      maxIdleInstances: map['maxIdleInstances'] == null ? null : (map['maxIdleInstances'] as int).input(),
      maxPendingLatency: map['maxPendingLatency'] == null ? null : (map['maxPendingLatency'] as String).input(),
      maxTotalInstances: map['maxTotalInstances'] == null ? null : (map['maxTotalInstances'] as int).input(),
      minIdleInstances: map['minIdleInstances'] == null ? null : (map['minIdleInstances'] as int).input(),
      minPendingLatency: map['minPendingLatency'] == null ? null : (map['minPendingLatency'] as String).input(),
      minTotalInstances: map['minTotalInstances'] == null ? null : (map['minTotalInstances'] as int).input(),
      networkUtilization: map['networkUtilization'] == null ? null : (NetworkUtilization.fromMap((map['networkUtilization'] as Map).cast<String, dynamic>())).input(),
      requestUtilization: map['requestUtilization'] == null ? null : (RequestUtilization.fromMap((map['requestUtilization'] as Map).cast<String, dynamic>())).input(),
      standardSchedulerSettings: map['standardSchedulerSettings'] == null ? null : (StandardSchedulerSettings.fromMap((map['standardSchedulerSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

