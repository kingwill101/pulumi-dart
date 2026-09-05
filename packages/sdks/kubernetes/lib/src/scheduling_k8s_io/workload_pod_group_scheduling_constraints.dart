// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topology_constraint_scheduling_k8s_io_v1alpha3.dart';

/// WorkloadPodGroupSchedulingConstraints defines leaf-level scheduling constraints, such as topology.
class WorkloadPodGroupSchedulingConstraints {
  /// topology specifies desired topological placements for all pods within the pod group. If unset, no topology placement is requested.
  final pulumi.Input<List<TopologyConstraintSchedulingK8sIoV1alpha3>?>? topology;

  /// Creates a new [WorkloadPodGroupSchedulingConstraints].
  /// [topology] topology specifies desired topological placements for all pods within the pod group. If unset, no topology placement is requested.
  const WorkloadPodGroupSchedulingConstraints({
    this.topology,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topology': ?pulumi.Input.mapOptionalInputValue<List<TopologyConstraintSchedulingK8sIoV1alpha3>, List<Map<String, dynamic>>>(topology, (value) => pulumi.Input.encodeList<TopologyConstraintSchedulingK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadPodGroupSchedulingConstraints.fromMap(Map<String, dynamic> map) {
    return WorkloadPodGroupSchedulingConstraints(
      topology: (() { final guardedValue = map['topology']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TopologyConstraintSchedulingK8sIoV1alpha3>(guardedValue, (value) => TopologyConstraintSchedulingK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
