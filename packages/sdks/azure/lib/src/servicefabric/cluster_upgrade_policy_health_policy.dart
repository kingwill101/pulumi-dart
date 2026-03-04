// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterUpgradePolicyHealthPolicy {
  /// Specifies the maximum tolerated percentage of applications that can have aggregated health state of error. If the upgrade exceeds this percentage, the cluster is unhealthy. Defaults to `0`.
  final pulumi.Input<int>? maxUnhealthyApplicationsPercent;

  /// Specifies the maximum tolerated percentage of nodes that can have aggregated health states of error. If an upgrade exceeds this percentage, the cluster is unhealthy. Defaults to `0`.
  final pulumi.Input<int>? maxUnhealthyNodesPercent;

  /// Creates a new [ClusterUpgradePolicyHealthPolicy].
  /// [maxUnhealthyApplicationsPercent] Specifies the maximum tolerated percentage of applications that can have aggregated health state of error. If the upgrade exceeds this percentage, the cluster is unhealthy. Defaults to `0`.
  /// [maxUnhealthyNodesPercent] Specifies the maximum tolerated percentage of nodes that can have aggregated health states of error. If an upgrade exceeds this percentage, the cluster is unhealthy. Defaults to `0`.
  ClusterUpgradePolicyHealthPolicy({
    this.maxUnhealthyApplicationsPercent,
    this.maxUnhealthyNodesPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnhealthyApplicationsPercent': ?maxUnhealthyApplicationsPercent,
      'maxUnhealthyNodesPercent': ?maxUnhealthyNodesPercent,
    };
  }

  factory ClusterUpgradePolicyHealthPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePolicyHealthPolicy(
      maxUnhealthyApplicationsPercent: (() {
        final guardedValue = map['maxUnhealthyApplicationsPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxUnhealthyNodesPercent: (() {
        final guardedValue = map['maxUnhealthyNodesPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
