// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Best effort provisioning.
class BestEffortProvisioningContainerV1beta1 {
  /// When this is enabled, cluster/node pool creations will ignore non-fatal errors like stockout to best provision as many nodes as possible right now and eventually bring up all target number of nodes
  final pulumi.Input<bool>? enabled;
  /// Minimum number of nodes to be provisioned to be considered as succeeded, and the rest of nodes will be provisioned gradually and eventually when stockout issue has been resolved.
  final pulumi.Input<int>? minProvisionNodes;

  /// Creates a new [BestEffortProvisioningContainerV1beta1].
  /// [enabled] When this is enabled, cluster/node pool creations will ignore non-fatal errors like stockout to best provision as many nodes as possible right now and eventually bring up all target number of nodes
  /// [minProvisionNodes] Minimum number of nodes to be provisioned to be considered as succeeded, and the rest of nodes will be provisioned gradually and eventually when stockout issue has been resolved.
  BestEffortProvisioningContainerV1beta1({
    this.enabled,
    this.minProvisionNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'minProvisionNodes': ?minProvisionNodes,
    };
  }

  factory BestEffortProvisioningContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return BestEffortProvisioningContainerV1beta1(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      minProvisionNodes: (() { final guardedValue = map['minProvisionNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

