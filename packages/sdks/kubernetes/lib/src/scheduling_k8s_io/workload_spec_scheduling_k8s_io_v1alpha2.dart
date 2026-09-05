// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_group_template.dart';
import 'typed_local_object_reference_scheduling_k8s_io_v1alpha2.dart';

/// WorkloadSpec defines the desired state of a Workload.
class WorkloadSpecSchedulingK8sIoV1alpha2 {
  /// ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  final pulumi.Input<TypedLocalObjectReferenceSchedulingK8sIoV1alpha2?>? controllerRef;
  /// PodGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. This field is immutable.
  final pulumi.Input<List<PodGroupTemplate>> podGroupTemplates;

  /// Creates a new [WorkloadSpecSchedulingK8sIoV1alpha2].
  /// [controllerRef] ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  /// [podGroupTemplates] PodGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. This field is immutable.
  const WorkloadSpecSchedulingK8sIoV1alpha2({
    this.controllerRef,
    required this.podGroupTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerRef': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReferenceSchedulingK8sIoV1alpha2, Map<String, dynamic>>(controllerRef, (value) => value.toMap()),
      'podGroupTemplates': pulumi.Input.mapInputValue<List<PodGroupTemplate>, List<Map<String, dynamic>>>(podGroupTemplates, (value) => pulumi.Input.encodeList<PodGroupTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadSpecSchedulingK8sIoV1alpha2.fromMap(Map<String, dynamic> map) {
    return WorkloadSpecSchedulingK8sIoV1alpha2(
      controllerRef: (() { final guardedValue = map['controllerRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypedLocalObjectReferenceSchedulingK8sIoV1alpha2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podGroupTemplates: pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupTemplate>(map['podGroupTemplates']!, (value) => PodGroupTemplate.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
