// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_group_template_patch.dart';
import 'typed_local_object_reference_patch.dart';

/// WorkloadSpec defines the desired state of a Workload.
class WorkloadSpecPatch {
  /// ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  final pulumi.Input<TypedLocalObjectReferencePatch>? controllerRef;
  /// PodGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. This field is immutable.
  final pulumi.Input<List<PodGroupTemplatePatch>>? podGroupTemplates;

  /// Creates a new [WorkloadSpecPatch].
  /// [controllerRef] ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  /// [podGroupTemplates] PodGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. This field is immutable.
  const WorkloadSpecPatch({
    this.controllerRef,
    this.podGroupTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerRef': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReferencePatch, Map<String, dynamic>>(controllerRef, (value) => value.toMap()),
      'podGroupTemplates': ?pulumi.Input.mapOptionalInputValue<List<PodGroupTemplatePatch>, List<Map<String, dynamic>>>(podGroupTemplates, (value) => pulumi.Input.encodeList<PodGroupTemplatePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadSpecPatch.fromMap(Map<String, dynamic> map) {
    return WorkloadSpecPatch(
      controllerRef: (() { final guardedValue = map['controllerRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypedLocalObjectReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podGroupTemplates: (() { final guardedValue = map['podGroupTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupTemplatePatch>(guardedValue, (value) => PodGroupTemplatePatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
