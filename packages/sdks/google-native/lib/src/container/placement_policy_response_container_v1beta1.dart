// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PlacementPolicy defines the placement policy used by the node pool.
class PlacementPolicyResponseContainerV1beta1 {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final pulumi.Input<String> policyName;
  /// TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  final pulumi.Input<String> tpuTopology;
  /// The type of placement.
  final pulumi.Input<String> type;

  /// Creates a new [PlacementPolicyResponseContainerV1beta1].
  /// [policyName] If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  /// [tpuTopology] TPU placement topology for pod slice node pool. https://cloud.google.com/tpu/docs/types-topologies#tpu_topologies
  /// [type] The type of placement.
  PlacementPolicyResponseContainerV1beta1({
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

  factory PlacementPolicyResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return PlacementPolicyResponseContainerV1beta1(
      policyName: (map['policyName'] as String).input(),
      tpuTopology: (map['tpuTopology'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

