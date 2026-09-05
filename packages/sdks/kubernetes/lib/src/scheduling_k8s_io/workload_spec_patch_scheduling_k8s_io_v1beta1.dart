// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_pod_group_template_patch_scheduling_k8s_io_v1beta1.dart';
import 'pod_group_template_patch_scheduling_k8s_io_v1beta1.dart';
import 'typed_local_object_reference_patch_scheduling_k8s_io_v1beta1.dart';

/// WorkloadSpec defines the desired state of a Workload.
class WorkloadSpecPatchSchedulingK8sIoV1beta1 {
  /// compositePodGroupTemplates is the list of CompositePodGroup templates that make up the Workload. The maximum number of templates is 8. This field is immutable. Exactly one of CompositePodGroupTemplates and PodGroupTemplates must be set.
  ///
  /// This field is used only when the CompositePodGroup feature gate is enabled.
  final pulumi.Input<List<CompositePodGroupTemplatePatchSchedulingK8sIoV1beta1>?>? compositePodGroupTemplates;
  /// controllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  final pulumi.Input<TypedLocalObjectReferencePatchSchedulingK8sIoV1beta1?>? controllerRef;
  /// podGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. Templates cannot be added or removed after the workload is created. Existing templates may still be updated where their individual fields allow it. Exactly one of CompositePodGroupTemplates and PodGroupTemplates must be set.
  final pulumi.Input<List<PodGroupTemplatePatchSchedulingK8sIoV1beta1>?>? podGroupTemplates;

  /// Creates a new [WorkloadSpecPatchSchedulingK8sIoV1beta1].
  /// [compositePodGroupTemplates] compositePodGroupTemplates is the list of CompositePodGroup templates that make up the Workload. The maximum number of templates is 8. This field is immutable. Exactly one of CompositePodGroupTemplates and PodGroupTemplates must be set.
  /// [controllerRef] controllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  /// [podGroupTemplates] podGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. Templates cannot be added or removed after the workload is created. Existing templates may still be updated where their individual fields allow it. Exactly one of CompositePodGroupTemplates and PodGroupTemplates must be set.
  const WorkloadSpecPatchSchedulingK8sIoV1beta1({
    this.compositePodGroupTemplates,
    this.controllerRef,
    this.podGroupTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositePodGroupTemplates': ?pulumi.Input.mapOptionalInputValue<List<CompositePodGroupTemplatePatchSchedulingK8sIoV1beta1>, List<Map<String, dynamic>>>(compositePodGroupTemplates, (value) => pulumi.Input.encodeList<CompositePodGroupTemplatePatchSchedulingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controllerRef': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReferencePatchSchedulingK8sIoV1beta1, Map<String, dynamic>>(controllerRef, (value) => value.toMap()),
      'podGroupTemplates': ?pulumi.Input.mapOptionalInputValue<List<PodGroupTemplatePatchSchedulingK8sIoV1beta1>, List<Map<String, dynamic>>>(podGroupTemplates, (value) => pulumi.Input.encodeList<PodGroupTemplatePatchSchedulingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadSpecPatchSchedulingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadSpecPatchSchedulingK8sIoV1beta1(
      compositePodGroupTemplates: (() { final guardedValue = map['compositePodGroupTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompositePodGroupTemplatePatchSchedulingK8sIoV1beta1>(guardedValue, (value) => CompositePodGroupTemplatePatchSchedulingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      controllerRef: (() { final guardedValue = map['controllerRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypedLocalObjectReferencePatchSchedulingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podGroupTemplates: (() { final guardedValue = map['podGroupTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupTemplatePatchSchedulingK8sIoV1beta1>(guardedValue, (value) => PodGroupTemplatePatchSchedulingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
