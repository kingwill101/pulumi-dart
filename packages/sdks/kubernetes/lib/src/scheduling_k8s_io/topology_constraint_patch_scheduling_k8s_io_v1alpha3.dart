// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TopologyConstraint defines a topology constraint for a PodGroup.
class TopologyConstraintPatchSchedulingK8sIoV1alpha3 {
  /// key specifies the key of the node label representing the topology domain. All pods within the PodGroup must be colocated within the same domain instance. Different PodGroups can land on different domain instances even if they derive from the same PodGroupTemplate. Examples: "topology.kubernetes.io/rack"
  final pulumi.Input<String?>? key;

  /// Creates a new [TopologyConstraintPatchSchedulingK8sIoV1alpha3].
  /// [key] key specifies the key of the node label representing the topology domain. All pods within the PodGroup must be colocated within the same domain instance. Different PodGroups can land on different domain instances even if they derive from the same PodGroupTemplate. Examples: "topology.kubernetes.io/rack"
  const TopologyConstraintPatchSchedulingK8sIoV1alpha3({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory TopologyConstraintPatchSchedulingK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return TopologyConstraintPatchSchedulingK8sIoV1alpha3(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
