// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cpu_utilization_response.dart';
import 'disk_utilization_response.dart';
import 'network_utilization_response.dart';
import 'request_utilization_response.dart';
import 'standard_scheduler_settings_response.dart';

/// Automatic scaling is based on request rate, response latencies, and other application metrics.
class AutomaticScalingResponse {
  /// The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  final pulumi.Input<String> coolDownPeriod;
  /// Target scaling by CPU usage.
  final pulumi.Input<CpuUtilizationResponse> cpuUtilization;
  /// Target scaling by disk usage.
  final pulumi.Input<DiskUtilizationResponse> diskUtilization;
  /// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.Defaults to a runtime-specific value.
  final pulumi.Input<int> maxConcurrentRequests;
  /// Maximum number of idle instances that should be maintained for this version.
  final pulumi.Input<int> maxIdleInstances;
  /// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  final pulumi.Input<String> maxPendingLatency;
  /// Maximum number of instances that should be started to handle requests for this version.
  final pulumi.Input<int> maxTotalInstances;
  /// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  final pulumi.Input<int> minIdleInstances;
  /// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  final pulumi.Input<String> minPendingLatency;
  /// Minimum number of running instances that should be maintained for this version.
  final pulumi.Input<int> minTotalInstances;
  /// Target scaling by network usage.
  final pulumi.Input<NetworkUtilizationResponse> networkUtilization;
  /// Target scaling by request utilization.
  final pulumi.Input<RequestUtilizationResponse> requestUtilization;
  /// Scheduler settings for standard environment.
  final pulumi.Input<StandardSchedulerSettingsResponse> standardSchedulerSettings;

  /// Creates a new [AutomaticScalingResponse].
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
  const AutomaticScalingResponse({
    required this.coolDownPeriod,
    required this.cpuUtilization,
    required this.diskUtilization,
    required this.maxConcurrentRequests,
    required this.maxIdleInstances,
    required this.maxPendingLatency,
    required this.maxTotalInstances,
    required this.minIdleInstances,
    required this.minPendingLatency,
    required this.minTotalInstances,
    required this.networkUtilization,
    required this.requestUtilization,
    required this.standardSchedulerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coolDownPeriod': coolDownPeriod,
      'cpuUtilization': pulumi.Input.mapInputValue<CpuUtilizationResponse, Map<String, dynamic>>(cpuUtilization, (value) => value.toMap()),
      'diskUtilization': pulumi.Input.mapInputValue<DiskUtilizationResponse, Map<String, dynamic>>(diskUtilization, (value) => value.toMap()),
      'maxConcurrentRequests': maxConcurrentRequests,
      'maxIdleInstances': maxIdleInstances,
      'maxPendingLatency': maxPendingLatency,
      'maxTotalInstances': maxTotalInstances,
      'minIdleInstances': minIdleInstances,
      'minPendingLatency': minPendingLatency,
      'minTotalInstances': minTotalInstances,
      'networkUtilization': pulumi.Input.mapInputValue<NetworkUtilizationResponse, Map<String, dynamic>>(networkUtilization, (value) => value.toMap()),
      'requestUtilization': pulumi.Input.mapInputValue<RequestUtilizationResponse, Map<String, dynamic>>(requestUtilization, (value) => value.toMap()),
      'standardSchedulerSettings': pulumi.Input.mapInputValue<StandardSchedulerSettingsResponse, Map<String, dynamic>>(standardSchedulerSettings, (value) => value.toMap()),
    };
  }

  factory AutomaticScalingResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticScalingResponse(
      coolDownPeriod: pulumi.Input.fromValue(map['coolDownPeriod'] as String),
      cpuUtilization: pulumi.Input.fromValue(CpuUtilizationResponse.fromMap((map['cpuUtilization']! as Map).cast<String, dynamic>())),
      diskUtilization: pulumi.Input.fromValue(DiskUtilizationResponse.fromMap((map['diskUtilization']! as Map).cast<String, dynamic>())),
      maxConcurrentRequests: pulumi.Input.fromValue(map['maxConcurrentRequests'] as int),
      maxIdleInstances: pulumi.Input.fromValue(map['maxIdleInstances'] as int),
      maxPendingLatency: pulumi.Input.fromValue(map['maxPendingLatency'] as String),
      maxTotalInstances: pulumi.Input.fromValue(map['maxTotalInstances'] as int),
      minIdleInstances: pulumi.Input.fromValue(map['minIdleInstances'] as int),
      minPendingLatency: pulumi.Input.fromValue(map['minPendingLatency'] as String),
      minTotalInstances: pulumi.Input.fromValue(map['minTotalInstances'] as int),
      networkUtilization: pulumi.Input.fromValue(NetworkUtilizationResponse.fromMap((map['networkUtilization']! as Map).cast<String, dynamic>())),
      requestUtilization: pulumi.Input.fromValue(RequestUtilizationResponse.fromMap((map['requestUtilization']! as Map).cast<String, dynamic>())),
      standardSchedulerSettings: pulumi.Input.fromValue(StandardSchedulerSettingsResponse.fromMap((map['standardSchedulerSettings']! as Map).cast<String, dynamic>())),
    );
  }
}
