// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterUpgradePolicyDeltaHealthPolicy {
  /// Specifies the maximum tolerated percentage of delta unhealthy applications that can have aggregated health states of error. If the current unhealthy applications do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to `0`.
  final pulumi.Input<int>? maxDeltaUnhealthyApplicationsPercent;
  /// Specifies the maximum tolerated percentage of delta unhealthy nodes that can have aggregated health states of error. If the current unhealthy nodes do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to `0`.
  final pulumi.Input<int>? maxDeltaUnhealthyNodesPercent;
  /// Specifies the maximum tolerated percentage of upgrade domain delta unhealthy nodes that can have aggregated health state of error. If there is any upgrade domain where the current unhealthy nodes do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to `0`.
  final pulumi.Input<int>? maxUpgradeDomainDeltaUnhealthyNodesPercent;

  /// Creates a new [ClusterUpgradePolicyDeltaHealthPolicy].
  /// [maxDeltaUnhealthyApplicationsPercent] Specifies the maximum tolerated percentage of delta unhealthy applications that can have aggregated health states of error. If the current unhealthy applications do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to `0`.
  /// [maxDeltaUnhealthyNodesPercent] Specifies the maximum tolerated percentage of delta unhealthy nodes that can have aggregated health states of error. If the current unhealthy nodes do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to `0`.
  /// [maxUpgradeDomainDeltaUnhealthyNodesPercent] Specifies the maximum tolerated percentage of upgrade domain delta unhealthy nodes that can have aggregated health state of error. If there is any upgrade domain where the current unhealthy nodes do not respect the percentage relative to the state at the beginning of the upgrade, the cluster is unhealthy. Defaults to `0`.
  const ClusterUpgradePolicyDeltaHealthPolicy({
    this.maxDeltaUnhealthyApplicationsPercent,
    this.maxDeltaUnhealthyNodesPercent,
    this.maxUpgradeDomainDeltaUnhealthyNodesPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxDeltaUnhealthyApplicationsPercent': ?maxDeltaUnhealthyApplicationsPercent,
      'maxDeltaUnhealthyNodesPercent': ?maxDeltaUnhealthyNodesPercent,
      'maxUpgradeDomainDeltaUnhealthyNodesPercent': ?maxUpgradeDomainDeltaUnhealthyNodesPercent,
    };
  }

  factory ClusterUpgradePolicyDeltaHealthPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePolicyDeltaHealthPolicy(
      maxDeltaUnhealthyApplicationsPercent: (() { final guardedValue = map['maxDeltaUnhealthyApplicationsPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxDeltaUnhealthyNodesPercent: (() { final guardedValue = map['maxDeltaUnhealthyNodesPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxUpgradeDomainDeltaUnhealthyNodesPercent: (() { final guardedValue = map['maxUpgradeDomainDeltaUnhealthyNodesPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
