// ignore_for_file: unused_element, unnecessary_cast

import 'standard_app_version_automatic_scaling_standard_scheduler_settings.dart';

class StandardAppVersionAutomaticScaling {
  /// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.
  /// Defaults to a runtime-specific value.
  final int? maxConcurrentRequests;
  /// Maximum number of idle instances that should be maintained for this version.
  final int? maxIdleInstances;
  /// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? maxPendingLatency;
  /// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  final int? minIdleInstances;
  /// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? minPendingLatency;
  /// Scheduler settings for standard environment.
  /// Structure is documented below.
  final StandardAppVersionAutomaticScalingStandardSchedulerSettings? standardSchedulerSettings;

  /// Creates a new [StandardAppVersionAutomaticScaling].
  /// [maxConcurrentRequests] Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.
  /// [maxIdleInstances] Maximum number of idle instances that should be maintained for this version.
  /// [maxPendingLatency] Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  /// [minIdleInstances] Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  /// [minPendingLatency] Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  /// [standardSchedulerSettings] Scheduler settings for standard environment.
  StandardAppVersionAutomaticScaling({
    this.maxConcurrentRequests,
    this.maxIdleInstances,
    this.maxPendingLatency,
    this.minIdleInstances,
    this.minPendingLatency,
    this.standardSchedulerSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConcurrentRequests': ?maxConcurrentRequests,
      'maxIdleInstances': ?maxIdleInstances,
      'maxPendingLatency': ?maxPendingLatency,
      'minIdleInstances': ?minIdleInstances,
      'minPendingLatency': ?minPendingLatency,
      'standardSchedulerSettings': ?standardSchedulerSettings == null ? null : standardSchedulerSettings!.toMap(),
    };
  }

  factory StandardAppVersionAutomaticScaling.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionAutomaticScaling(
      maxConcurrentRequests: map['maxConcurrentRequests'] == null ? null : map['maxConcurrentRequests'] as int,
      maxIdleInstances: map['maxIdleInstances'] == null ? null : map['maxIdleInstances'] as int,
      maxPendingLatency: map['maxPendingLatency'] == null ? null : map['maxPendingLatency'] as String,
      minIdleInstances: map['minIdleInstances'] == null ? null : map['minIdleInstances'] as int,
      minPendingLatency: map['minPendingLatency'] == null ? null : map['minPendingLatency'] as String,
      standardSchedulerSettings: map['standardSchedulerSettings'] == null ? null : StandardAppVersionAutomaticScalingStandardSchedulerSettings.fromMap((map['standardSchedulerSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

