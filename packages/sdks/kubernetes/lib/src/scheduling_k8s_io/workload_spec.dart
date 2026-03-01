// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_group.dart';
import 'typed_local_object_reference.dart';

/// WorkloadSpec defines the desired state of a Workload.
class WorkloadSpec {
  /// ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. When set, it cannot be changed.
  final TypedLocalObjectReference? controllerRef;
  /// PodGroups is the list of pod groups that make up the Workload. The maximum number of pod groups is 8. This field is immutable.
  final List<PodGroup> podGroups;

  /// Creates a new [WorkloadSpec].
  /// [controllerRef] ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. When set, it cannot be changed.
  /// [podGroups] PodGroups is the list of pod groups that make up the Workload. The maximum number of pod groups is 8. This field is immutable.
  WorkloadSpec({
    this.controllerRef,
    required this.podGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerRef': ?controllerRef == null ? null : controllerRef!.toMap(),
      'podGroups': pulumi.Input.encodeList<PodGroup, Map<String, dynamic>>(podGroups, (value) => value.toMap()),
    };
  }

  factory WorkloadSpec.fromMap(Map<String, dynamic> map) {
    return WorkloadSpec(
      controllerRef: map['controllerRef'] == null ? null : TypedLocalObjectReference.fromMap((map['controllerRef'] as Map).cast<String, dynamic>()),
      podGroups: pulumi.Input.decodeList<PodGroup>(map['podGroups'], (value) => PodGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

