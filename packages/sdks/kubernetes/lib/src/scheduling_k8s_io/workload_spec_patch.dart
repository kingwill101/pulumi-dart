// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_group_patch.dart';
import 'typed_local_object_reference_patch.dart';

/// WorkloadSpec defines the desired state of a Workload.
class WorkloadSpecPatch {
  /// ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. When set, it cannot be changed.
  final pulumi.Input<TypedLocalObjectReferencePatch>? controllerRef;
  /// PodGroups is the list of pod groups that make up the Workload. The maximum number of pod groups is 8. This field is immutable.
  final pulumi.Input<List<PodGroupPatch>>? podGroups;

  /// Creates a new [WorkloadSpecPatch].
  /// [controllerRef] ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. When set, it cannot be changed.
  /// [podGroups] PodGroups is the list of pod groups that make up the Workload. The maximum number of pod groups is 8. This field is immutable.
  WorkloadSpecPatch({
    this.controllerRef,
    this.podGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerRef': ?pulumi.Input.mapOptionalInputValue<TypedLocalObjectReferencePatch, Map<String, dynamic>>(controllerRef, (value) => value.toMap()),
      'podGroups': ?pulumi.Input.mapOptionalInputValue<List<PodGroupPatch>, List<Map<String, dynamic>>>(podGroups, (value) => pulumi.Input.encodeList<PodGroupPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadSpecPatch.fromMap(Map<String, dynamic> map) {
    return WorkloadSpecPatch(
      controllerRef: map['controllerRef'] == null ? null : (TypedLocalObjectReferencePatch.fromMap((map['controllerRef']! as Map).cast<String, dynamic>())).input(),
      podGroups: map['podGroups'] == null ? null : (pulumi.Input.decodeList<PodGroupPatch>(map['podGroups']!, (value) => PodGroupPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

