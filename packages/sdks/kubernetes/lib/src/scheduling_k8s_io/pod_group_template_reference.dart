// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_pod_group_template_reference.dart';

/// PodGroupTemplateReference references a PodGroup template defined in some object (e.g. Workload). Exactly one reference must be set.
class PodGroupTemplateReference {
  /// Workload references the PodGroupTemplate within the Workload object that was used to create the PodGroup.
  final pulumi.Input<WorkloadPodGroupTemplateReference>? workload;

  /// Creates a new [PodGroupTemplateReference].
  /// [workload] Workload references the PodGroupTemplate within the Workload object that was used to create the PodGroup.
  const PodGroupTemplateReference({
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workload': ?pulumi.Input.mapOptionalInputValue<WorkloadPodGroupTemplateReference, Map<String, dynamic>>(workload, (value) => value.toMap()),
    };
  }

  factory PodGroupTemplateReference.fromMap(Map<String, dynamic> map) {
    return PodGroupTemplateReference(
      workload: (() { final guardedValue = map['workload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadPodGroupTemplateReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
