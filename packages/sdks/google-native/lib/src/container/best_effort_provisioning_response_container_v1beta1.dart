// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Best effort provisioning.
class BestEffortProvisioningResponseContainerV1beta1 {
  /// When this is enabled, cluster/node pool creations will ignore non-fatal errors like stockout to best provision as many nodes as possible right now and eventually bring up all target number of nodes
  final pulumi.Input<bool> enabled;
  /// Minimum number of nodes to be provisioned to be considered as succeeded, and the rest of nodes will be provisioned gradually and eventually when stockout issue has been resolved.
  final pulumi.Input<int> minProvisionNodes;

  /// Creates a new [BestEffortProvisioningResponseContainerV1beta1].
  /// [enabled] When this is enabled, cluster/node pool creations will ignore non-fatal errors like stockout to best provision as many nodes as possible right now and eventually bring up all target number of nodes
  /// [minProvisionNodes] Minimum number of nodes to be provisioned to be considered as succeeded, and the rest of nodes will be provisioned gradually and eventually when stockout issue has been resolved.
  const BestEffortProvisioningResponseContainerV1beta1({
    required this.enabled,
    required this.minProvisionNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'minProvisionNodes': minProvisionNodes,
    };
  }

  factory BestEffortProvisioningResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return BestEffortProvisioningResponseContainerV1beta1(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      minProvisionNodes: pulumi.Input.fromValue(map['minProvisionNodes'] as int),
    );
  }
}

