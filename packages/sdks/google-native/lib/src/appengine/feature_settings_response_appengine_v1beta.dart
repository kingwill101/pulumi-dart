// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The feature specific settings to be used in the application. These define behaviors that are user configurable.
class FeatureSettingsResponseAppengineV1beta {
  /// Boolean value indicating if split health checks should be used instead of the legacy health checks. At an app.yaml level, this means defaulting to 'readiness_check' and 'liveness_check' values instead of 'health_check' ones. Once the legacy 'health_check' behavior is deprecated, and this value is always true, this setting can be removed.
  final pulumi.Input<bool> splitHealthChecks;
  /// If true, use Container-Optimized OS (https://cloud.google.com/container-optimized-os/) base image for VMs, rather than a base Debian image.
  final pulumi.Input<bool> useContainerOptimizedOs;

  /// Creates a new [FeatureSettingsResponseAppengineV1beta].
  /// [splitHealthChecks] Boolean value indicating if split health checks should be used instead of the legacy health checks. At an app.yaml level, this means defaulting to 'readiness_check' and 'liveness_check' values instead of 'health_check' ones. Once the legacy 'health_check' behavior is deprecated, and this value is always true, this setting can be removed.
  /// [useContainerOptimizedOs] If true, use Container-Optimized OS (https://cloud.google.com/container-optimized-os/) base image for VMs, rather than a base Debian image.
  FeatureSettingsResponseAppengineV1beta({
    required this.splitHealthChecks,
    required this.useContainerOptimizedOs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'splitHealthChecks': splitHealthChecks,
      'useContainerOptimizedOs': useContainerOptimizedOs,
    };
  }

  factory FeatureSettingsResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return FeatureSettingsResponseAppengineV1beta(
      splitHealthChecks: (map['splitHealthChecks'] as bool).input(),
      useContainerOptimizedOs: (map['useContainerOptimizedOs'] as bool).input(),
    );
  }
}

