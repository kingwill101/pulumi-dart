// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_health_policy.dart';
import 'rolling_upgrade_monitoring_policy.dart';

/// Describes the policy for a monitored application upgrade.
class ApplicationUpgradePolicy {
  /// Defines a health policy used to evaluate the health of an application or one of its children entities.
  final pulumi.Input<ApplicationHealthPolicy>? applicationHealthPolicy;
  /// If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  final pulumi.Input<bool>? forceRestart;
  /// Duration in seconds, to wait before a stateless instance is closed, to allow the active requests to drain gracefully. This would be effective when the instance is closing during the application/cluster upgrade, only for those instances which have a non-zero delay duration configured in the service description.
  final pulumi.Input<double>? instanceCloseDelayDuration;
  /// Determines whether the application should be recreated on update. If value=true, the rest of the upgrade policy parameters are not allowed.
  final pulumi.Input<bool>? recreateApplication;
  /// The policy used for monitoring the application upgrade
  final pulumi.Input<RollingUpgradeMonitoringPolicy>? rollingUpgradeMonitoringPolicy;
  /// The mode used to monitor health during a rolling upgrade. The values are Monitored, and UnmonitoredAuto.
  final pulumi.Input<String>? upgradeMode;
  /// The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues. When this timeout expires, processing of the upgrade domain will proceed regardless of availability loss issues. The timeout is reset at the start of each upgrade domain. Valid values are between 0 and 42949672925 inclusive. (unsigned 32-bit integer).
  final pulumi.Input<double>? upgradeReplicaSetCheckTimeout;

  /// Creates a new [ApplicationUpgradePolicy].
  /// [applicationHealthPolicy] Defines a health policy used to evaluate the health of an application or one of its children entities.
  /// [forceRestart] If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  /// [instanceCloseDelayDuration] Duration in seconds, to wait before a stateless instance is closed, to allow the active requests to drain gracefully. This would be effective when the instance is closing during the application/cluster upgrade, only for those instances which have a non-zero delay duration configured in the service description.
  /// [recreateApplication] Determines whether the application should be recreated on update. If value=true, the rest of the upgrade policy parameters are not allowed.
  /// [rollingUpgradeMonitoringPolicy] The policy used for monitoring the application upgrade
  /// [upgradeMode] The mode used to monitor health during a rolling upgrade. The values are Monitored, and UnmonitoredAuto.
  /// [upgradeReplicaSetCheckTimeout] The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues. When this timeout expires, processing of the upgrade domain will proceed regardless of availability loss issues. The timeout is reset at the start of each upgrade domain. Valid values are between 0 and 42949672925 inclusive. (unsigned 32-bit integer).
  const ApplicationUpgradePolicy({
    this.applicationHealthPolicy,
    this.forceRestart,
    this.instanceCloseDelayDuration,
    this.recreateApplication,
    this.rollingUpgradeMonitoringPolicy,
    this.upgradeMode,
    this.upgradeReplicaSetCheckTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationHealthPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationHealthPolicy, Map<String, dynamic>>(applicationHealthPolicy, (value) => value.toMap()),
      'forceRestart': ?forceRestart,
      'instanceCloseDelayDuration': ?instanceCloseDelayDuration,
      'recreateApplication': ?recreateApplication,
      'rollingUpgradeMonitoringPolicy': ?pulumi.Input.mapOptionalInputValue<RollingUpgradeMonitoringPolicy, Map<String, dynamic>>(rollingUpgradeMonitoringPolicy, (value) => value.toMap()),
      'upgradeMode': ?upgradeMode,
      'upgradeReplicaSetCheckTimeout': ?upgradeReplicaSetCheckTimeout,
    };
  }

  factory ApplicationUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationUpgradePolicy(
      applicationHealthPolicy: (() { final guardedValue = map['applicationHealthPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationHealthPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceRestart: (() { final guardedValue = map['forceRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceCloseDelayDuration: (() { final guardedValue = map['instanceCloseDelayDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      recreateApplication: (() { final guardedValue = map['recreateApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rollingUpgradeMonitoringPolicy: (() { final guardedValue = map['rollingUpgradeMonitoringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollingUpgradeMonitoringPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgradeMode: (() { final guardedValue = map['upgradeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upgradeReplicaSetCheckTimeout: (() { final guardedValue = map['upgradeReplicaSetCheckTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
