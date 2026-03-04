// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_group.dart';
import 'typed_local_object_reference.dart';

/// WorkloadSpec defines the desired state of a Workload.
class WorkloadSpec {
  /// ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. When set, it cannot be changed.
  final pulumi.Input<TypedLocalObjectReference>? controllerRef;

  /// PodGroups is the list of pod groups that make up the Workload. The maximum number of pod groups is 8. This field is immutable.
  final pulumi.Input<List<PodGroup>> podGroups;

  /// Creates a new [WorkloadSpec].
  /// [controllerRef] ControllerRef is an optional reference to the controlling object, such as a Deployment or Job. This field is intended for use by tools like CLIs to provide a link back to the original workload definition. When set, it cannot be changed.
  /// [podGroups] PodGroups is the list of pod groups that make up the Workload. The maximum number of pod groups is 8. This field is immutable.
  WorkloadSpec({this.controllerRef, required this.podGroups});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerRef':
          ?pulumi.Input.mapOptionalInputValue<
            TypedLocalObjectReference,
            Map<String, dynamic>
          >(controllerRef, (value) => value.toMap()),
      'podGroups':
          pulumi
              .Input.mapInputValue<List<PodGroup>, List<Map<String, dynamic>>>(
            podGroups,
            (value) => pulumi.Input.encodeList<PodGroup, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory WorkloadSpec.fromMap(Map<String, dynamic> map) {
    return WorkloadSpec(
      controllerRef: (() {
        final guardedValue = map['controllerRef'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TypedLocalObjectReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      podGroups: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PodGroup>(
          map['podGroups']!,
          (value) => PodGroup.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
