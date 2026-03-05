// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The feature specific settings to be used in the application. These define behaviors that are user configurable.
class FeatureSettings {
  /// Boolean value indicating if split health checks should be used instead of the legacy health checks. At an app.yaml level, this means defaulting to 'readiness_check' and 'liveness_check' values instead of 'health_check' ones. Once the legacy 'health_check' behavior is deprecated, and this value is always true, this setting can be removed.
  final pulumi.Input<bool>? splitHealthChecks;
  /// If true, use Container-Optimized OS (https://cloud.google.com/container-optimized-os/) base image for VMs, rather than a base Debian image.
  final pulumi.Input<bool>? useContainerOptimizedOs;

  /// Creates a new [FeatureSettings].
  /// [splitHealthChecks] Boolean value indicating if split health checks should be used instead of the legacy health checks. At an app.yaml level, this means defaulting to 'readiness_check' and 'liveness_check' values instead of 'health_check' ones. Once the legacy 'health_check' behavior is deprecated, and this value is always true, this setting can be removed.
  /// [useContainerOptimizedOs] If true, use Container-Optimized OS (https://cloud.google.com/container-optimized-os/) base image for VMs, rather than a base Debian image.
  FeatureSettings({
    this.splitHealthChecks,
    this.useContainerOptimizedOs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'splitHealthChecks': ?splitHealthChecks,
      'useContainerOptimizedOs': ?useContainerOptimizedOs,
    };
  }

  factory FeatureSettings.fromMap(Map<String, dynamic> map) {
    return FeatureSettings(
      splitHealthChecks: (() { final guardedValue = map['splitHealthChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useContainerOptimizedOs: (() { final guardedValue = map['useContainerOptimizedOs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

