// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodSchedulingContextSpec describes where resources for the Pod are needed.
class PodSchedulingContextSpec {
  /// PotentialNodes lists nodes where the Pod might be able to run.
  ///
  /// The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
  final pulumi.Input<List<String>>? potentialNodes;
  /// SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use "WaitForFirstConsumer" allocation is to be attempted.
  final pulumi.Input<String>? selectedNode;

  /// Creates a new [PodSchedulingContextSpec].
  /// [potentialNodes] PotentialNodes lists nodes where the Pod might be able to run.
  /// [selectedNode] SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use "WaitForFirstConsumer" allocation is to be attempted.
  const PodSchedulingContextSpec({
    this.potentialNodes,
    this.selectedNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'potentialNodes': ?potentialNodes,
      'selectedNode': ?selectedNode,
    };
  }

  factory PodSchedulingContextSpec.fromMap(Map<String, dynamic> map) {
    return PodSchedulingContextSpec(
      potentialNodes: (() { final guardedValue = map['potentialNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selectedNode: (() { final guardedValue = map['selectedNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

