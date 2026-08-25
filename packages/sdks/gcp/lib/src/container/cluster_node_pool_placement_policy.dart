// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolPlacementPolicy {
  /// If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  final pulumi.Input<String?>? policyName;
  /// The TPU topology like "2x4" or "2x2x2". https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology
  final pulumi.Input<String?>? tpuTopology;
  /// Telemetry integration for the cluster. Supported values (`ENABLED, DISABLED, SYSTEM_ONLY`);
  /// `SYSTEM_ONLY` (Only system components are monitored and logged) is only available in GKE versions 1.15 and later.
  final pulumi.Input<String> type;

  /// Creates a new [ClusterNodePoolPlacementPolicy].
  /// [policyName] If set, refers to the name of a custom resource policy supplied by the user. The resource policy must be in the same project and region as the node pool. If not found, InvalidArgument error is returned.
  /// [tpuTopology] The TPU topology like "2x4" or "2x2x2". https://cloud.google.com/kubernetes-engine/docs/concepts/plan-tpus#topology
  /// [type] Telemetry integration for the cluster. Supported values (`ENABLED, DISABLED, SYSTEM_ONLY`);
  const ClusterNodePoolPlacementPolicy({
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
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tpuTopology: (() { final guardedValue = map['tpuTopology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
