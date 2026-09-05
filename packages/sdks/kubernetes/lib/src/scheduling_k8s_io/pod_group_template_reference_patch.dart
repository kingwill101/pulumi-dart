// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_pod_group_template_reference_patch.dart';

/// PodGroupTemplateReference references a PodGroup template defined in some object (e.g. Workload). Exactly one reference must be set.
class PodGroupTemplateReferencePatch {
  /// Workload references the PodGroupTemplate within the Workload object that was used to create the PodGroup.
  final pulumi.Input<WorkloadPodGroupTemplateReferencePatch?>? workload;

  /// Creates a new [PodGroupTemplateReferencePatch].
  /// [workload] Workload references the PodGroupTemplate within the Workload object that was used to create the PodGroup.
  const PodGroupTemplateReferencePatch({
    this.workload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workload': ?pulumi.Input.mapOptionalInputValue<WorkloadPodGroupTemplateReferencePatch, Map<String, dynamic>>(workload, (value) => value.toMap()),
    };
  }

  factory PodGroupTemplateReferencePatch.fromMap(Map<String, dynamic> map) {
    return PodGroupTemplateReferencePatch(
      workload: (() { final guardedValue = map['workload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadPodGroupTemplateReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
