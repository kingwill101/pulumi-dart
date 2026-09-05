// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topology_constraint_scheduling_k8s_io_v1alpha3.dart';

/// PodGroupSchedulingConstraints defines scheduling constraints (e.g. topology) for a PodGroup.
class PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3 {
  /// topology defines the topology constraints for the pod group. Currently only a single topology constraint can be specified. This may change in the future.
  final pulumi.Input<List<TopologyConstraintSchedulingK8sIoV1alpha3>?>? topology;

  /// Creates a new [PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3].
  /// [topology] topology defines the topology constraints for the pod group. Currently only a single topology constraint can be specified. This may change in the future.
  const PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3({
    this.topology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topology': ?pulumi.Input.mapOptionalInputValue<List<TopologyConstraintSchedulingK8sIoV1alpha3>, List<Map<String, dynamic>>>(topology, (value) => pulumi.Input.encodeList<TopologyConstraintSchedulingK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return PodGroupSchedulingConstraintsSchedulingK8sIoV1alpha3(
      topology: (() { final guardedValue = map['topology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopologyConstraintSchedulingK8sIoV1alpha3>(guardedValue, (value) => TopologyConstraintSchedulingK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
