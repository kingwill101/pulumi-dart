// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topology_constraint_patch.dart';

/// PodGroupSchedulingConstraints defines scheduling constraints (e.g. topology) for a PodGroup.
class PodGroupSchedulingConstraintsPatch {
  /// Topology defines the topology constraints for the pod group. Currently only a single topology constraint can be specified. This may change in the future.
  final pulumi.Input<List<TopologyConstraintPatch>>? topology;

  /// Creates a new [PodGroupSchedulingConstraintsPatch].
  /// [topology] Topology defines the topology constraints for the pod group. Currently only a single topology constraint can be specified. This may change in the future.
  const PodGroupSchedulingConstraintsPatch({
    this.topology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topology': ?pulumi.Input.mapOptionalInputValue<List<TopologyConstraintPatch>, List<Map<String, dynamic>>>(topology, (value) => pulumi.Input.encodeList<TopologyConstraintPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodGroupSchedulingConstraintsPatch.fromMap(Map<String, dynamic> map) {
    return PodGroupSchedulingConstraintsPatch(
      topology: (() { final guardedValue = map['topology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopologyConstraintPatch>(guardedValue, (value) => TopologyConstraintPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
