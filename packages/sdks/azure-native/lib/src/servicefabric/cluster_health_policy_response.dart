// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a health policy used to evaluate the health of the cluster or of a cluster node.
class ClusterHealthPolicyResponse {
  /// The maximum allowed percentage of unhealthy applications before reporting an error. For example, to allow 10% of applications to be unhealthy, this value would be 10.
  ///
  /// The percentage represents the maximum tolerated percentage of applications that can be unhealthy before the cluster is considered in error.
  /// If the percentage is respected but there is at least one unhealthy application, the health is evaluated as Warning.
  /// This is calculated by dividing the number of unhealthy applications over the total number of application instances in the cluster, excluding applications of application types that are included in the ApplicationTypeHealthPolicyMap.
  /// The computation rounds up to tolerate one failure on small numbers of applications. Default percentage is zero.
  final pulumi.Input<int> maxPercentUnhealthyApplications;
  /// The maximum allowed percentage of unhealthy nodes before reporting an error. For example, to allow 10% of nodes to be unhealthy, this value would be 10.
  ///
  /// The percentage represents the maximum tolerated percentage of nodes that can be unhealthy before the cluster is considered in error.
  /// If the percentage is respected but there is at least one unhealthy node, the health is evaluated as Warning.
  /// The percentage is calculated by dividing the number of unhealthy nodes over the total number of nodes in the cluster.
  /// The computation rounds up to tolerate one failure on small numbers of nodes. Default percentage is zero.
  ///
  /// In large clusters, some nodes will always be down or out for repairs, so this percentage should be configured to tolerate that.
  final pulumi.Input<int> maxPercentUnhealthyNodes;

  /// Creates a new [ClusterHealthPolicyResponse].
  /// [maxPercentUnhealthyApplications] The maximum allowed percentage of unhealthy applications before reporting an error. For example, to allow 10% of applications to be unhealthy, this value would be 10.
  /// [maxPercentUnhealthyNodes] The maximum allowed percentage of unhealthy nodes before reporting an error. For example, to allow 10% of nodes to be unhealthy, this value would be 10.
  ClusterHealthPolicyResponse({
    required this.maxPercentUnhealthyApplications,
    required this.maxPercentUnhealthyNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPercentUnhealthyApplications': maxPercentUnhealthyApplications,
      'maxPercentUnhealthyNodes': maxPercentUnhealthyNodes,
    };
  }

  factory ClusterHealthPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ClusterHealthPolicyResponse(
      maxPercentUnhealthyApplications: pulumi.Input.fromValue(map['maxPercentUnhealthyApplications'] as int),
      maxPercentUnhealthyNodes: pulumi.Input.fromValue(map['maxPercentUnhealthyNodes'] as int),
    );
  }
}

