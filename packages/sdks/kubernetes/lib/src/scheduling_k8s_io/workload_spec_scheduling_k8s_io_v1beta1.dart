// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_pod_group_template_scheduling_k8s_io_v1beta1.dart';
import 'pod_group_template_scheduling_k8s_io_v1beta1.dart';
import 'typed_local_object_reference_scheduling_k8s_io_v1beta1.dart';

/// WorkloadSpec defines the desired state of a Workload.
class WorkloadSpecSchedulingK8sIoV1beta1 {
  /// compositePodGroupTemplates is the list of CompositePodGroup templates that make up the Workload. The maximum number of templates is 8. This field is immutable. Exactly one of CompositePodGroupTemplates and PodGroupTemplates must be set.
  ///
  /// This field is used only when the CompositePodGroup feature gate is enabled.
  final pulumi.Input<List<CompositePodGroupTemplateSchedulingK8sIoV1beta1>?>? compositePodGroupTemplates;
  /// controllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  final pulumi.Input<TypedLocalObjectReferenceSchedulingK8sIoV1beta1?>? controllerRef;
  /// podGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. Templates cannot be added or removed after the workload is created. Existing templates may still be updated where their individual fields allow it. Exactly one of CompositePodGroupTemplates and PodGroupTemplates must be set.
  final pulumi.Input<List<PodGroupTemplateSchedulingK8sIoV1beta1>?>? podGroupTemplates;

  /// Creates a new [WorkloadSpecSchedulingK8sIoV1beta1].
  /// [compositePodGroupTemplates] compositePodGroupTemplates is the list of CompositePodGroup templates that make up the Workload. The maximum number of templates is 8. This field is immutable. Exactly one of CompositePodGroupTemplates and PodGroupTemplates must be set.
  /// [controllerRef] controllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  /// [podGroupTemplates] podGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. Templates cannot be added or removed after the workload is created. Existing templates may still be updated where their individual fields allow it. Exactly one of CompositePodGroupTemplates and PodGroupTemplates must be set.
  const WorkloadSpecSchedulingK8sIoV1beta1({
    this.compositePodGroupTemplates,
    this.controllerRef,
    this.podGroupTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compositePodGroupTemplates': ?pulumi.Input.mapOptionalInputValue<List<CompositePodGroupTemplateSchedulingK8sIoV1beta1>, List<Map<String, dynamic>>>(compositePodGroupTemplates, (value) => pulumi.Input.encodeList<CompositePodGroupTemplateSchedulingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'controllerRef': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReferenceSchedulingK8sIoV1beta1, Map<String, dynamic>>(controllerRef, (value) => value.toMap()),
      'podGroupTemplates': ?pulumi.Input.mapOptionalInputValue<List<PodGroupTemplateSchedulingK8sIoV1beta1>, List<Map<String, dynamic>>>(podGroupTemplates, (value) => pulumi.Input.encodeList<PodGroupTemplateSchedulingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadSpecSchedulingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkloadSpecSchedulingK8sIoV1beta1(
      compositePodGroupTemplates: (() { final guardedValue = map['compositePodGroupTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CompositePodGroupTemplateSchedulingK8sIoV1beta1>(guardedValue, (value) => CompositePodGroupTemplateSchedulingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      controllerRef: (() { final guardedValue = map['controllerRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypedLocalObjectReferenceSchedulingK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podGroupTemplates: (() { final guardedValue = map['podGroupTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupTemplateSchedulingK8sIoV1beta1>(guardedValue, (value) => PodGroupTemplateSchedulingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
