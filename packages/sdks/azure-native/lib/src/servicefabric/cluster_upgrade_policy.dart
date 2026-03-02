// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_health_policy.dart';
import 'cluster_monitoring_policy.dart';
import 'cluster_upgrade_delta_health_policy.dart';

/// Describes the policy used when upgrading the cluster.
class ClusterUpgradePolicy {
  /// The cluster delta health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  final pulumi.Input<ClusterUpgradeDeltaHealthPolicy>? deltaHealthPolicy;
  /// If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  final pulumi.Input<bool>? forceRestart;
  /// The cluster health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  final pulumi.Input<ClusterHealthPolicy>? healthPolicy;
  /// The cluster monitoring policy describes the parameters for monitoring an upgrade in Monitored mode.
  final pulumi.Input<ClusterMonitoringPolicy>? monitoringPolicy;
  /// The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues.
  /// When this timeout expires, processing of the upgrade domain will proceed regardless of availability loss issues.
  /// The timeout is reset at the start of each upgrade domain. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  /// This value must be between 00:00:00 and 49710.06:28:15 (unsigned 32 bit integer for seconds)
  final pulumi.Input<String>? upgradeReplicaSetCheckTimeout;

  /// Creates a new [ClusterUpgradePolicy].
  /// [deltaHealthPolicy] The cluster delta health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  /// [forceRestart] If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  /// [healthPolicy] The cluster health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  /// [monitoringPolicy] The cluster monitoring policy describes the parameters for monitoring an upgrade in Monitored mode.
  /// [upgradeReplicaSetCheckTimeout] The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues.
  ClusterUpgradePolicy({
    this.deltaHealthPolicy,
    this.forceRestart,
    this.healthPolicy,
    this.monitoringPolicy,
    this.upgradeReplicaSetCheckTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deltaHealthPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradeDeltaHealthPolicy, Map<String, dynamic>>(deltaHealthPolicy, (value) => value.toMap()),
      'forceRestart': ?forceRestart,
      'healthPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterHealthPolicy, Map<String, dynamic>>(healthPolicy, (value) => value.toMap()),
      'monitoringPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterMonitoringPolicy, Map<String, dynamic>>(monitoringPolicy, (value) => value.toMap()),
      'upgradeReplicaSetCheckTimeout': ?upgradeReplicaSetCheckTimeout,
    };
  }

  factory ClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePolicy(
      deltaHealthPolicy: map['deltaHealthPolicy'] == null ? null : (ClusterUpgradeDeltaHealthPolicy.fromMap((map['deltaHealthPolicy'] as Map).cast<String, dynamic>())).input(),
      forceRestart: map['forceRestart'] == null ? null : (map['forceRestart'] as bool).input(),
      healthPolicy: map['healthPolicy'] == null ? null : (ClusterHealthPolicy.fromMap((map['healthPolicy'] as Map).cast<String, dynamic>())).input(),
      monitoringPolicy: map['monitoringPolicy'] == null ? null : (ClusterMonitoringPolicy.fromMap((map['monitoringPolicy'] as Map).cast<String, dynamic>())).input(),
      upgradeReplicaSetCheckTimeout: map['upgradeReplicaSetCheckTimeout'] == null ? null : (map['upgradeReplicaSetCheckTimeout'] as String).input(),
    );
  }
}

