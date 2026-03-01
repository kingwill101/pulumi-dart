// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_upgrade_policy_delta_health_policy.dart';
import 'cluster_upgrade_policy_health_policy.dart';

class ClusterUpgradePolicy {
  /// A `delta_health_policy` block as defined below
  final ClusterUpgradePolicyDeltaHealthPolicy? deltaHealthPolicy;
  /// Indicates whether to restart the Service Fabric node even if only dynamic configurations have changed.
  final bool? forceRestartEnabled;
  /// Specifies the duration, in "hh:mm:ss" string format, after which Service Fabric retries the health check if the previous health check fails. Defaults to `00:45:00`.
  final String? healthCheckRetryTimeout;
  /// Specifies the duration, in "hh:mm:ss" string format, that Service Fabric waits in order to verify that the cluster is stable before it continues to the next upgrade domain or completes the upgrade. This wait duration prevents undetected changes of health right after the health check is performed. Defaults to `00:01:00`.
  final String? healthCheckStableDuration;
  /// Specifies the duration, in "hh:mm:ss" string format, that Service Fabric waits before it performs the initial health check after it finishes the upgrade on the upgrade domain. Defaults to `00:00:30`.
  final String? healthCheckWaitDuration;
  /// A `health_policy` block as defined below
  final ClusterUpgradePolicyHealthPolicy? healthPolicy;
  /// Specifies the duration, in "hh:mm:ss" string format, that Service Fabric takes to upgrade a single upgrade domain. After this period, the upgrade fails. Defaults to `02:00:00`.
  final String? upgradeDomainTimeout;
  /// Specifies the duration, in "hh:mm:ss" string format, that Service Fabric waits for a replica set to reconfigure into a safe state, if it is not already in a safe state, before Service Fabric proceeds with the upgrade. Defaults to `10675199.02:48:05.4775807`.
  final String? upgradeReplicaSetCheckTimeout;
  /// Specifies the duration, in "hh:mm:ss" string format, that Service Fabric takes for the entire upgrade. After this period, the upgrade fails. Defaults to `12:00:00`.
  final String? upgradeTimeout;

  /// Creates a new [ClusterUpgradePolicy].
  /// [deltaHealthPolicy] A `delta_health_policy` block as defined below
  /// [forceRestartEnabled] Indicates whether to restart the Service Fabric node even if only dynamic configurations have changed.
  /// [healthCheckRetryTimeout] Specifies the duration, in "hh:mm:ss" string format, after which Service Fabric retries the health check if the previous health check fails. Defaults to `00:45:00`.
  /// [healthCheckStableDuration] Specifies the duration, in "hh:mm:ss" string format, that Service Fabric waits in order to verify that the cluster is stable before it continues to the next upgrade domain or completes the upgrade. This wait duration prevents undetected changes of health right after the health check is performed. Defaults to `00:01:00`.
  /// [healthCheckWaitDuration] Specifies the duration, in "hh:mm:ss" string format, that Service Fabric waits before it performs the initial health check after it finishes the upgrade on the upgrade domain. Defaults to `00:00:30`.
  /// [healthPolicy] A `health_policy` block as defined below
  /// [upgradeDomainTimeout] Specifies the duration, in "hh:mm:ss" string format, that Service Fabric takes to upgrade a single upgrade domain. After this period, the upgrade fails. Defaults to `02:00:00`.
  /// [upgradeReplicaSetCheckTimeout] Specifies the duration, in "hh:mm:ss" string format, that Service Fabric waits for a replica set to reconfigure into a safe state, if it is not already in a safe state, before Service Fabric proceeds with the upgrade. Defaults to `10675199.02:48:05.4775807`.
  /// [upgradeTimeout] Specifies the duration, in "hh:mm:ss" string format, that Service Fabric takes for the entire upgrade. After this period, the upgrade fails. Defaults to `12:00:00`.
  ClusterUpgradePolicy({
    this.deltaHealthPolicy,
    this.forceRestartEnabled,
    this.healthCheckRetryTimeout,
    this.healthCheckStableDuration,
    this.healthCheckWaitDuration,
    this.healthPolicy,
    this.upgradeDomainTimeout,
    this.upgradeReplicaSetCheckTimeout,
    this.upgradeTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deltaHealthPolicy': ?deltaHealthPolicy == null ? null : deltaHealthPolicy!.toMap(),
      'forceRestartEnabled': ?forceRestartEnabled,
      'healthCheckRetryTimeout': ?healthCheckRetryTimeout,
      'healthCheckStableDuration': ?healthCheckStableDuration,
      'healthCheckWaitDuration': ?healthCheckWaitDuration,
      'healthPolicy': ?healthPolicy == null ? null : healthPolicy!.toMap(),
      'upgradeDomainTimeout': ?upgradeDomainTimeout,
      'upgradeReplicaSetCheckTimeout': ?upgradeReplicaSetCheckTimeout,
      'upgradeTimeout': ?upgradeTimeout,
    };
  }

  factory ClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePolicy(
      deltaHealthPolicy: map['deltaHealthPolicy'] == null ? null : ClusterUpgradePolicyDeltaHealthPolicy.fromMap((map['deltaHealthPolicy'] as Map).cast<String, dynamic>()),
      forceRestartEnabled: map['forceRestartEnabled'] == null ? null : map['forceRestartEnabled'] as bool,
      healthCheckRetryTimeout: map['healthCheckRetryTimeout'] == null ? null : map['healthCheckRetryTimeout'] as String,
      healthCheckStableDuration: map['healthCheckStableDuration'] == null ? null : map['healthCheckStableDuration'] as String,
      healthCheckWaitDuration: map['healthCheckWaitDuration'] == null ? null : map['healthCheckWaitDuration'] as String,
      healthPolicy: map['healthPolicy'] == null ? null : ClusterUpgradePolicyHealthPolicy.fromMap((map['healthPolicy'] as Map).cast<String, dynamic>()),
      upgradeDomainTimeout: map['upgradeDomainTimeout'] == null ? null : map['upgradeDomainTimeout'] as String,
      upgradeReplicaSetCheckTimeout: map['upgradeReplicaSetCheckTimeout'] == null ? null : map['upgradeReplicaSetCheckTimeout'] as String,
      upgradeTimeout: map['upgradeTimeout'] == null ? null : map['upgradeTimeout'] as String,
    );
  }
}

