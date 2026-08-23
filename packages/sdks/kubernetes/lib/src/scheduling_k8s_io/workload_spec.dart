// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_group_template.dart';
import 'typed_local_object_reference.dart';

/// WorkloadSpec defines the desired state of a Workload.
class WorkloadSpec {
  /// ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  final pulumi.Input<TypedLocalObjectReference>? controllerRef;
  /// PodGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. This field is immutable.
  final pulumi.Input<List<PodGroupTemplate>> podGroupTemplates;

  /// Creates a new [WorkloadSpec].
  /// [controllerRef] ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. This field is immutable.
  /// [podGroupTemplates] PodGroupTemplates is the list of templates that make up the Workload. The maximum number of templates is 8. This field is immutable.
  const WorkloadSpec({
    this.controllerRef,
    required this.podGroupTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerRef': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReference, Map<String, dynamic>>(controllerRef, (value) => value.toMap()),
      'podGroupTemplates': pulumi.Input.mapInputValue<List<PodGroupTemplate>, List<Map<String, dynamic>>>(podGroupTemplates, (value) => pulumi.Input.encodeList<PodGroupTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadSpec.fromMap(Map<String, dynamic> map) {
    return WorkloadSpec(
      controllerRef: (() { final guardedValue = map['controllerRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypedLocalObjectReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      podGroupTemplates: pulumi.Input.fromValue(pulumi.Input.decodeList<PodGroupTemplate>(map['podGroupTemplates']!, (value) => PodGroupTemplate.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
