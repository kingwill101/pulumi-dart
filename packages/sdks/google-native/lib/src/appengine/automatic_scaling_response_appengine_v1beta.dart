// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cpu_utilization_response_appengine_v1beta.dart';
import 'custom_metric_response.dart';
import 'disk_utilization_response_appengine_v1beta.dart';
import 'network_utilization_response_appengine_v1beta.dart';
import 'request_utilization_response_appengine_v1beta.dart';
import 'standard_scheduler_settings_response_appengine_v1beta.dart';

/// Automatic scaling is based on request rate, response latencies, and other application metrics.
class AutomaticScalingResponseAppengineV1beta {
  /// The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  final pulumi.Input<String> coolDownPeriod;
  /// Target scaling by CPU usage.
  final pulumi.Input<CpuUtilizationResponseAppengineV1beta> cpuUtilization;
  /// Target scaling by user-provided metrics. Only applicable in the App Engine flexible environment.
  final pulumi.Input<List<CustomMetricResponse>> customMetrics;
  /// Target scaling by disk usage.
  final pulumi.Input<DiskUtilizationResponseAppengineV1beta> diskUtilization;
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
  final pulumi.Input<NetworkUtilizationResponseAppengineV1beta> networkUtilization;
  /// Target scaling by request utilization.
  final pulumi.Input<RequestUtilizationResponseAppengineV1beta> requestUtilization;
  /// Scheduler settings for standard environment.
  final pulumi.Input<StandardSchedulerSettingsResponseAppengineV1beta> standardSchedulerSettings;

  /// Creates a new [AutomaticScalingResponseAppengineV1beta].
  /// [coolDownPeriod] The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.
  /// [cpuUtilization] Target scaling by CPU usage.
  /// [customMetrics] Target scaling by user-provided metrics. Only applicable in the App Engine flexible environment.
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
  const AutomaticScalingResponseAppengineV1beta({
    required this.coolDownPeriod,
    required this.cpuUtilization,
    required this.customMetrics,
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
      'cpuUtilization': pulumi.Input.mapInputValue<CpuUtilizationResponseAppengineV1beta, Map<String, dynamic>>(cpuUtilization, (value) => value.toMap()),
      'customMetrics': pulumi.Input.mapInputValue<List<CustomMetricResponse>, List<Map<String, dynamic>>>(customMetrics, (value) => pulumi.Input.encodeList<CustomMetricResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskUtilization': pulumi.Input.mapInputValue<DiskUtilizationResponseAppengineV1beta, Map<String, dynamic>>(diskUtilization, (value) => value.toMap()),
      'maxConcurrentRequests': maxConcurrentRequests,
      'maxIdleInstances': maxIdleInstances,
      'maxPendingLatency': maxPendingLatency,
      'maxTotalInstances': maxTotalInstances,
      'minIdleInstances': minIdleInstances,
      'minPendingLatency': minPendingLatency,
      'minTotalInstances': minTotalInstances,
      'networkUtilization': pulumi.Input.mapInputValue<NetworkUtilizationResponseAppengineV1beta, Map<String, dynamic>>(networkUtilization, (value) => value.toMap()),
      'requestUtilization': pulumi.Input.mapInputValue<RequestUtilizationResponseAppengineV1beta, Map<String, dynamic>>(requestUtilization, (value) => value.toMap()),
      'standardSchedulerSettings': pulumi.Input.mapInputValue<StandardSchedulerSettingsResponseAppengineV1beta, Map<String, dynamic>>(standardSchedulerSettings, (value) => value.toMap()),
    };
  }

  factory AutomaticScalingResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return AutomaticScalingResponseAppengineV1beta(
      coolDownPeriod: pulumi.Input.fromValue(map['coolDownPeriod'] as String),
      cpuUtilization: pulumi.Input.fromValue(CpuUtilizationResponseAppengineV1beta.fromMap((map['cpuUtilization']! as Map).cast<String, dynamic>())),
      customMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<CustomMetricResponse>(map['customMetrics']!, (value) => CustomMetricResponse.fromMap((value as Map).cast<String, dynamic>()))),
      diskUtilization: pulumi.Input.fromValue(DiskUtilizationResponseAppengineV1beta.fromMap((map['diskUtilization']! as Map).cast<String, dynamic>())),
      maxConcurrentRequests: pulumi.Input.fromValue(map['maxConcurrentRequests'] as int),
      maxIdleInstances: pulumi.Input.fromValue(map['maxIdleInstances'] as int),
      maxPendingLatency: pulumi.Input.fromValue(map['maxPendingLatency'] as String),
      maxTotalInstances: pulumi.Input.fromValue(map['maxTotalInstances'] as int),
      minIdleInstances: pulumi.Input.fromValue(map['minIdleInstances'] as int),
      minPendingLatency: pulumi.Input.fromValue(map['minPendingLatency'] as String),
      minTotalInstances: pulumi.Input.fromValue(map['minTotalInstances'] as int),
      networkUtilization: pulumi.Input.fromValue(NetworkUtilizationResponseAppengineV1beta.fromMap((map['networkUtilization']! as Map).cast<String, dynamic>())),
      requestUtilization: pulumi.Input.fromValue(RequestUtilizationResponseAppengineV1beta.fromMap((map['requestUtilization']! as Map).cast<String, dynamic>())),
      standardSchedulerSettings: pulumi.Input.fromValue(StandardSchedulerSettingsResponseAppengineV1beta.fromMap((map['standardSchedulerSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

