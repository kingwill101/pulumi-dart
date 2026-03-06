// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the monitoring policies for the cluster upgrade.
class ClusterMonitoringPolicyResponse {
  /// The amount of time to retry health evaluation when the application or cluster is unhealthy before the upgrade rolls back. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  final pulumi.Input<String> healthCheckRetryTimeout;
  /// The amount of time that the application or cluster must remain healthy before the upgrade proceeds to the next upgrade domain. The duration can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  final pulumi.Input<String> healthCheckStableDuration;
  /// The length of time to wait after completing an upgrade domain before performing health checks. The duration can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  final pulumi.Input<String> healthCheckWaitDuration;
  /// The amount of time each upgrade domain has to complete before the upgrade rolls back. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  final pulumi.Input<String> upgradeDomainTimeout;
  /// The amount of time the overall upgrade has to complete before the upgrade rolls back. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  final pulumi.Input<String> upgradeTimeout;

  /// Creates a new [ClusterMonitoringPolicyResponse].
  /// [healthCheckRetryTimeout] The amount of time to retry health evaluation when the application or cluster is unhealthy before the upgrade rolls back. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  /// [healthCheckStableDuration] The amount of time that the application or cluster must remain healthy before the upgrade proceeds to the next upgrade domain. The duration can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  /// [healthCheckWaitDuration] The length of time to wait after completing an upgrade domain before performing health checks. The duration can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  /// [upgradeDomainTimeout] The amount of time each upgrade domain has to complete before the upgrade rolls back. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  /// [upgradeTimeout] The amount of time the overall upgrade has to complete before the upgrade rolls back. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  const ClusterMonitoringPolicyResponse({
    required this.healthCheckRetryTimeout,
    required this.healthCheckStableDuration,
    required this.healthCheckWaitDuration,
    required this.upgradeDomainTimeout,
    required this.upgradeTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckRetryTimeout': healthCheckRetryTimeout,
      'healthCheckStableDuration': healthCheckStableDuration,
      'healthCheckWaitDuration': healthCheckWaitDuration,
      'upgradeDomainTimeout': upgradeDomainTimeout,
      'upgradeTimeout': upgradeTimeout,
    };
  }

  factory ClusterMonitoringPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ClusterMonitoringPolicyResponse(
      healthCheckRetryTimeout: pulumi.Input.fromValue(map['healthCheckRetryTimeout'] as String),
      healthCheckStableDuration: pulumi.Input.fromValue(map['healthCheckStableDuration'] as String),
      healthCheckWaitDuration: pulumi.Input.fromValue(map['healthCheckWaitDuration'] as String),
      upgradeDomainTimeout: pulumi.Input.fromValue(map['upgradeDomainTimeout'] as String),
      upgradeTimeout: pulumi.Input.fromValue(map['upgradeTimeout'] as String),
    );
  }
}

