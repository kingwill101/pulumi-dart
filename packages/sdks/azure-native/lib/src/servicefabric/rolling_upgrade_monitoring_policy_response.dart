// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy used for monitoring the application upgrade
class RollingUpgradeMonitoringPolicyResponse {
  /// The compensating action to perform when a Monitored upgrade encounters monitoring policy or health policy violations. Invalid indicates the failure action is invalid. Rollback specifies that the upgrade will start rolling back automatically. Manual indicates that the upgrade will switch to UnmonitoredManual upgrade mode.
  final pulumi.Input<String> failureAction;
  /// The amount of time to retry health evaluation when the application or cluster is unhealthy before FailureAction is executed. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  final pulumi.Input<String> healthCheckRetryTimeout;
  /// The amount of time that the application or cluster must remain healthy before the upgrade proceeds to the next upgrade domain. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  final pulumi.Input<String> healthCheckStableDuration;
  /// The amount of time to wait after completing an upgrade domain before applying health policies. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  final pulumi.Input<String> healthCheckWaitDuration;
  /// The amount of time each upgrade domain has to complete before FailureAction is executed. Cannot be larger than 12 hours. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  final pulumi.Input<String> upgradeDomainTimeout;
  /// The amount of time the overall upgrade has to complete before FailureAction is executed. Cannot be larger than 12 hours. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  final pulumi.Input<String> upgradeTimeout;

  /// Creates a new [RollingUpgradeMonitoringPolicyResponse].
  /// [failureAction] The compensating action to perform when a Monitored upgrade encounters monitoring policy or health policy violations. Invalid indicates the failure action is invalid. Rollback specifies that the upgrade will start rolling back automatically. Manual indicates that the upgrade will switch to UnmonitoredManual upgrade mode.
  /// [healthCheckRetryTimeout] The amount of time to retry health evaluation when the application or cluster is unhealthy before FailureAction is executed. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  /// [healthCheckStableDuration] The amount of time that the application or cluster must remain healthy before the upgrade proceeds to the next upgrade domain. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  /// [healthCheckWaitDuration] The amount of time to wait after completing an upgrade domain before applying health policies. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  /// [upgradeDomainTimeout] The amount of time each upgrade domain has to complete before FailureAction is executed. Cannot be larger than 12 hours. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  /// [upgradeTimeout] The amount of time the overall upgrade has to complete before FailureAction is executed. Cannot be larger than 12 hours. It is interpreted as a string representing an ISO 8601 duration with following format "hh:mm:ss.fff".
  RollingUpgradeMonitoringPolicyResponse({
    required this.failureAction,
    required this.healthCheckRetryTimeout,
    required this.healthCheckStableDuration,
    required this.healthCheckWaitDuration,
    required this.upgradeDomainTimeout,
    required this.upgradeTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureAction': failureAction,
      'healthCheckRetryTimeout': healthCheckRetryTimeout,
      'healthCheckStableDuration': healthCheckStableDuration,
      'healthCheckWaitDuration': healthCheckWaitDuration,
      'upgradeDomainTimeout': upgradeDomainTimeout,
      'upgradeTimeout': upgradeTimeout,
    };
  }

  factory RollingUpgradeMonitoringPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RollingUpgradeMonitoringPolicyResponse(
      failureAction: pulumi.Input.fromValue(map['failureAction'] as String),
      healthCheckRetryTimeout: pulumi.Input.fromValue(map['healthCheckRetryTimeout'] as String),
      healthCheckStableDuration: pulumi.Input.fromValue(map['healthCheckStableDuration'] as String),
      healthCheckWaitDuration: pulumi.Input.fromValue(map['healthCheckWaitDuration'] as String),
      upgradeDomainTimeout: pulumi.Input.fromValue(map['upgradeDomainTimeout'] as String),
      upgradeTimeout: pulumi.Input.fromValue(map['upgradeTimeout'] as String),
    );
  }
}

