// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolPlacementPolicy {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final pulumi.Input<String>? policyName;
  /// The TPU topology like "2x4" or "2x2x2". https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology
  final pulumi.Input<String>? tpuTopology;
  /// Telemetry integration for the cluster. Supported values (`ENABLED, DISABLED, SYSTEM_ONLY`);
  /// `SYSTEM_ONLY` (Only system components are monitored and logged) is only available in GKE versions 1.15 and later.
  final pulumi.Input<String> type;

  /// Creates a new [ClusterNodePoolPlacementPolicy].
  /// [policyName] If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  /// [tpuTopology] The TPU topology like "2x4" or "2x2x2". https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology
  /// [type] Telemetry integration for the cluster. Supported values (`ENABLED, DISABLED, SYSTEM_ONLY`);
  ClusterNodePoolPlacementPolicy({
    this.policyName,
    this.tpuTopology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'tpuTopology': ?tpuTopology,
      'type': type,
    };
  }

  factory ClusterNodePoolPlacementPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolPlacementPolicy(
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      tpuTopology: map['tpuTopology'] == null ? null : (map['tpuTopology']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

