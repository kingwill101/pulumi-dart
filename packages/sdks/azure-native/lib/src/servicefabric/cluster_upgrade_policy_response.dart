// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_health_policy_response.dart';
import 'cluster_monitoring_policy_response.dart';
import 'cluster_upgrade_delta_health_policy_response.dart';

/// Describes the policy used when upgrading the cluster.
class ClusterUpgradePolicyResponse {
  /// The cluster delta health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  final pulumi.Input<ClusterUpgradeDeltaHealthPolicyResponse>? deltaHealthPolicy;
  /// If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  final pulumi.Input<bool>? forceRestart;
  /// The cluster health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  final pulumi.Input<ClusterHealthPolicyResponse>? healthPolicy;
  /// The cluster monitoring policy describes the parameters for monitoring an upgrade in Monitored mode.
  final pulumi.Input<ClusterMonitoringPolicyResponse>? monitoringPolicy;
  /// The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues.
  /// When this timeout expires, processing of the upgrade domain will proceed regardless of availability loss issues.
  /// The timeout is reset at the start of each upgrade domain. The timeout can be in either hh:mm:ss or in d.hh:mm:ss.ms format.
  /// This value must be between 00:00:00 and 49710.06:28:15 (unsigned 32 bit integer for seconds)
  final pulumi.Input<String>? upgradeReplicaSetCheckTimeout;

  /// Creates a new [ClusterUpgradePolicyResponse].
  /// [deltaHealthPolicy] The cluster delta health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  /// [forceRestart] If true, then processes are forcefully restarted during upgrade even when the code version has not changed (the upgrade only changes configuration or data).
  /// [healthPolicy] The cluster health policy defines a health policy used to evaluate the health of the cluster during a cluster upgrade.
  /// [monitoringPolicy] The cluster monitoring policy describes the parameters for monitoring an upgrade in Monitored mode.
  /// [upgradeReplicaSetCheckTimeout] The maximum amount of time to block processing of an upgrade domain and prevent loss of availability when there are unexpected issues.
  const ClusterUpgradePolicyResponse({
    this.deltaHealthPolicy,
    this.forceRestart,
    this.healthPolicy,
    this.monitoringPolicy,
    this.upgradeReplicaSetCheckTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deltaHealthPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterUpgradeDeltaHealthPolicyResponse, Map<String, dynamic>>(deltaHealthPolicy, (value) => value.toMap()),
      'forceRestart': ?forceRestart,
      'healthPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterHealthPolicyResponse, Map<String, dynamic>>(healthPolicy, (value) => value.toMap()),
      'monitoringPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterMonitoringPolicyResponse, Map<String, dynamic>>(monitoringPolicy, (value) => value.toMap()),
      'upgradeReplicaSetCheckTimeout': ?upgradeReplicaSetCheckTimeout,
    };
  }

  factory ClusterUpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePolicyResponse(
      deltaHealthPolicy: (() { final guardedValue = map['deltaHealthPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterUpgradeDeltaHealthPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceRestart: (() { final guardedValue = map['forceRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthPolicy: (() { final guardedValue = map['healthPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterHealthPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringPolicy: (() { final guardedValue = map['monitoringPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMonitoringPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upgradeReplicaSetCheckTimeout: (() { final guardedValue = map['upgradeReplicaSetCheckTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
