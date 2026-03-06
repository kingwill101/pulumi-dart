// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Anthosobservability**: Per-Membership Feature spec.
class AnthosObservabilityMembershipSpecGkehubV1beta {
  /// Use full of metrics rather than optimized metrics. See https://cloud.google.com/anthos/clusters/docs/on-prem/1.8/concepts/logging-and-monitoring#optimized_metrics_default_metrics
  final pulumi.Input<bool>? doNotOptimizeMetrics;
  /// Enable collecting and reporting metrics and logs from user apps.
  final pulumi.Input<bool>? enableStackdriverOnApplications;
  /// the version of stackdriver operator used by this feature
  final pulumi.Input<String>? version;

  /// Creates a new [AnthosObservabilityMembershipSpecGkehubV1beta].
  /// [doNotOptimizeMetrics] Use full of metrics rather than optimized metrics. See https://cloud.google.com/anthos/clusters/docs/on-prem/1.8/concepts/logging-and-monitoring#optimized_metrics_default_metrics
  /// [enableStackdriverOnApplications] Enable collecting and reporting metrics and logs from user apps.
  /// [version] the version of stackdriver operator used by this feature
  const AnthosObservabilityMembershipSpecGkehubV1beta({
    this.doNotOptimizeMetrics,
    this.enableStackdriverOnApplications,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doNotOptimizeMetrics': ?doNotOptimizeMetrics,
      'enableStackdriverOnApplications': ?enableStackdriverOnApplications,
      'version': ?version,
    };
  }

  factory AnthosObservabilityMembershipSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return AnthosObservabilityMembershipSpecGkehubV1beta(
      doNotOptimizeMetrics: (() { final guardedValue = map['doNotOptimizeMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableStackdriverOnApplications: (() { final guardedValue = map['enableStackdriverOnApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

