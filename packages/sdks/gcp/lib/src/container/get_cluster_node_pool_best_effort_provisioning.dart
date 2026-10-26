// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolBestEffortProvisioning {
  /// Whether node pool creation ignores non-fatal errors like stockout to provision as many nodes as possible, eventually bringing up the target number of nodes.
  final pulumi.Input<bool> enabled;
  /// Minimum number of nodes that must be provisioned for the creation to be considered successful. Can only be set when enabled is true.
  final pulumi.Input<int> minProvisionNodes;

  /// Creates a new [GetClusterNodePoolBestEffortProvisioning].
  /// [enabled] Whether node pool creation ignores non-fatal errors like stockout to provision as many nodes as possible, eventually bringing up the target number of nodes.
  /// [minProvisionNodes] Minimum number of nodes that must be provisioned for the creation to be considered successful. Can only be set when enabled is true.
  const GetClusterNodePoolBestEffortProvisioning({
    required this.enabled,
    required this.minProvisionNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'minProvisionNodes': minProvisionNodes,
    };
  }

  factory GetClusterNodePoolBestEffortProvisioning.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolBestEffortProvisioning(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      minProvisionNodes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minProvisionNodes'])),
    );
  }
}
