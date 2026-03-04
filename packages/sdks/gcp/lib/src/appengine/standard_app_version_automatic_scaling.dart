// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_app_version_automatic_scaling_standard_scheduler_settings.dart';

class StandardAppVersionAutomaticScaling {
  /// Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.
  /// Defaults to a runtime-specific value.
  final pulumi.Input<int>? maxConcurrentRequests;

  /// Maximum number of idle instances that should be maintained for this version.
  final pulumi.Input<int>? maxIdleInstances;

  /// Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? maxPendingLatency;

  /// Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.
  final pulumi.Input<int>? minIdleInstances;

  /// Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final pulumi.Input<String>? minPendingLatency;

  /// Scheduler settings for standard environment.
  /// Structure is documented below.
  final pulumi.Input<
    StandardAppVersionAutomaticScalingStandardSchedulerSettings
  >?
  standardSchedulerSettings;

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
      'standardSchedulerSettings':
          ?pulumi.Input.mapOptionalInputValue<
            StandardAppVersionAutomaticScalingStandardSchedulerSettings,
            Map<String, dynamic>
          >(standardSchedulerSettings, (value) => value.toMap()),
    };
  }

  factory StandardAppVersionAutomaticScaling.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionAutomaticScaling(
      maxConcurrentRequests: (() {
        final guardedValue = map['maxConcurrentRequests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxIdleInstances: (() {
        final guardedValue = map['maxIdleInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxPendingLatency: (() {
        final guardedValue = map['maxPendingLatency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minIdleInstances: (() {
        final guardedValue = map['minIdleInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minPendingLatency: (() {
        final guardedValue = map['minPendingLatency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      standardSchedulerSettings: (() {
        final guardedValue = map['standardSchedulerSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StandardAppVersionAutomaticScalingStandardSchedulerSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
