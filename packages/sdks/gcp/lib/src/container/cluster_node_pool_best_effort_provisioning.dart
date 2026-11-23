// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolBestEffortProvisioning {
  /// When enabled, node pool creation ignores non-fatal errors like stockout to provision as many nodes as possible right away, and eventually brings up the target number of nodes. Set to `false` or remove the block to disable best-effort provisioning; either change recreates the cluster.
  final pulumi.Input<bool> enabled;
  /// Minimum number of nodes that must be provisioned for the creation to be considered successful. The remaining nodes are provisioned gradually once the stockout issue has been resolved. Can only be set when `enabled` is `true`.
  final pulumi.Input<int?>? minProvisionNodes;

  /// Creates a new [ClusterNodePoolBestEffortProvisioning].
  /// [enabled] When enabled, node pool creation ignores non-fatal errors like stockout to provision as many nodes as possible right away, and eventually brings up the target number of nodes. Set to `false` or remove the block to disable best-effort provisioning; either change recreates the cluster.
  /// [minProvisionNodes] Minimum number of nodes that must be provisioned for the creation to be considered successful. The remaining nodes are provisioned gradually once the stockout issue has been resolved. Can only be set when `enabled` is `true`.
  const ClusterNodePoolBestEffortProvisioning({
    required this.enabled,
    this.minProvisionNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'minProvisionNodes': ?minProvisionNodes,
    };
  }

  factory ClusterNodePoolBestEffortProvisioning.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolBestEffortProvisioning(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      minProvisionNodes: (() { final guardedValue = map['minProvisionNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
