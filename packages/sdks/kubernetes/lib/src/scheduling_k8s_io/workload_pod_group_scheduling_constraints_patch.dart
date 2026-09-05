// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topology_constraint_patch_scheduling_k8s_io_v1alpha3.dart';

/// WorkloadPodGroupSchedulingConstraints defines leaf-level scheduling constraints, such as topology.
class WorkloadPodGroupSchedulingConstraintsPatch {
  /// topology specifies desired topological placements for all pods within the pod group. If unset, no topology placement is requested.
  final pulumi.Input<List<TopologyConstraintPatchSchedulingK8sIoV1alpha3>?>? topology;

  /// Creates a new [WorkloadPodGroupSchedulingConstraintsPatch].
  /// [topology] topology specifies desired topological placements for all pods within the pod group. If unset, no topology placement is requested.
  const WorkloadPodGroupSchedulingConstraintsPatch({
    this.topology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topology': ?pulumi.Input.mapOptionalInputValue<List<TopologyConstraintPatchSchedulingK8sIoV1alpha3>, List<Map<String, dynamic>>>(topology, (value) => pulumi.Input.encodeList<TopologyConstraintPatchSchedulingK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadPodGroupSchedulingConstraintsPatch.fromMap(Map<String, dynamic> map) {
    return WorkloadPodGroupSchedulingConstraintsPatch(
      topology: (() { final guardedValue = map['topology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopologyConstraintPatchSchedulingK8sIoV1alpha3>(guardedValue, (value) => TopologyConstraintPatchSchedulingK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
