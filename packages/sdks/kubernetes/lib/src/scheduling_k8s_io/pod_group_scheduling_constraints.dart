// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topology_constraint.dart';

/// PodGroupSchedulingConstraints defines scheduling constraints (e.g. topology) for a PodGroup.
class PodGroupSchedulingConstraints {
  /// Topology defines the topology constraints for the pod group. Currently only a single topology constraint can be specified. This may change in the future.
  final pulumi.Input<List<TopologyConstraint>?>? topology;

  /// Creates a new [PodGroupSchedulingConstraints].
  /// [topology] Topology defines the topology constraints for the pod group. Currently only a single topology constraint can be specified. This may change in the future.
  const PodGroupSchedulingConstraints({
    this.topology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topology': ?pulumi.Input.mapOptionalInputValue<List<TopologyConstraint>, List<Map<String, dynamic>>>(topology, (value) => pulumi.Input.encodeList<TopologyConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodGroupSchedulingConstraints.fromMap(Map<String, dynamic> map) {
    return PodGroupSchedulingConstraints(
      topology: (() { final guardedValue = map['topology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopologyConstraint>(guardedValue, (value) => TopologyConstraint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
