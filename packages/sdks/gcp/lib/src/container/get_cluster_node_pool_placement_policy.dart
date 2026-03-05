// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolPlacementPolicy {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final pulumi.Input<String> policyName;
  /// The TPU topology like "2x4" or "2x2x2". https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology
  final pulumi.Input<String> tpuTopology;
  /// Type defines the type of placement policy
  final pulumi.Input<String> type;

  /// Creates a new [GetClusterNodePoolPlacementPolicy].
  /// [policyName] If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  /// [tpuTopology] The TPU topology like "2x4" or "2x2x2". https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology
  /// [type] Type defines the type of placement policy
  GetClusterNodePoolPlacementPolicy({
    required this.policyName,
    required this.tpuTopology,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'tpuTopology': tpuTopology,
      'type': type,
    };
  }

  factory GetClusterNodePoolPlacementPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolPlacementPolicy(
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      tpuTopology: pulumi.Input.fromValue(map['tpuTopology'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

