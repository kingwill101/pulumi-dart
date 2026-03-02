// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the delta health policies for the cluster upgrade.
class ClusterUpgradeDeltaHealthPolicyResponse {
  /// The maximum allowed percentage of applications health degradation allowed during cluster upgrades.
  /// The delta is measured between the state of the applications at the beginning of upgrade and the state of the applications at the time of the health evaluation.
  /// The check is performed after every upgrade domain upgrade completion to make sure the global state of the cluster is within tolerated limits. System services are not included in this.
  /// NOTE: This value will overwrite the value specified in properties.UpgradeDescription.HealthPolicy.MaxPercentUnhealthyApplications
  final pulumi.Input<int>? maxPercentDeltaUnhealthyApplications;
  /// The maximum allowed percentage of nodes health degradation allowed during cluster upgrades.
  /// The delta is measured between the state of the nodes at the beginning of upgrade and the state of the nodes at the time of the health evaluation.
  /// The check is performed after every upgrade domain upgrade completion to make sure the global state of the cluster is within tolerated limits.
  final pulumi.Input<int> maxPercentDeltaUnhealthyNodes;
  /// The maximum allowed percentage of upgrade domain nodes health degradation allowed during cluster upgrades.
  /// The delta is measured between the state of the upgrade domain nodes at the beginning of upgrade and the state of the upgrade domain nodes at the time of the health evaluation.
  /// The check is performed after every upgrade domain upgrade completion for all completed upgrade domains to make sure the state of the upgrade domains is within tolerated limits.
  final pulumi.Input<int>? maxPercentUpgradeDomainDeltaUnhealthyNodes;

  /// Creates a new [ClusterUpgradeDeltaHealthPolicyResponse].
  /// [maxPercentDeltaUnhealthyApplications] The maximum allowed percentage of applications health degradation allowed during cluster upgrades.
  /// [maxPercentDeltaUnhealthyNodes] The maximum allowed percentage of nodes health degradation allowed during cluster upgrades.
  /// [maxPercentUpgradeDomainDeltaUnhealthyNodes] The maximum allowed percentage of upgrade domain nodes health degradation allowed during cluster upgrades.
  ClusterUpgradeDeltaHealthPolicyResponse({
    this.maxPercentDeltaUnhealthyApplications,
    required this.maxPercentDeltaUnhealthyNodes,
    this.maxPercentUpgradeDomainDeltaUnhealthyNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPercentDeltaUnhealthyApplications': ?maxPercentDeltaUnhealthyApplications,
      'maxPercentDeltaUnhealthyNodes': maxPercentDeltaUnhealthyNodes,
      'maxPercentUpgradeDomainDeltaUnhealthyNodes': ?maxPercentUpgradeDomainDeltaUnhealthyNodes,
    };
  }

  factory ClusterUpgradeDeltaHealthPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeDeltaHealthPolicyResponse(
      maxPercentDeltaUnhealthyApplications: map['maxPercentDeltaUnhealthyApplications'] == null ? null : (map['maxPercentDeltaUnhealthyApplications']! as int).input(),
      maxPercentDeltaUnhealthyNodes: (map['maxPercentDeltaUnhealthyNodes'] as int).input(),
      maxPercentUpgradeDomainDeltaUnhealthyNodes: map['maxPercentUpgradeDomainDeltaUnhealthyNodes'] == null ? null : (map['maxPercentUpgradeDomainDeltaUnhealthyNodes']! as int).input(),
    );
  }
}

