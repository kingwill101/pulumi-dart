// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eviction_pod_reference.dart';

/// EvictionTarget contains a reference to an object that should be evicted.
class EvictionTarget {
  /// pod references a pod that is subject to eviction/termination. Pods that are part of a PodGroup (.spec.schedulingGroup is set) are not supported.
  final pulumi.Input<EvictionPodReference?>? pod;

  /// Creates a new [EvictionTarget].
  /// [pod] pod references a pod that is subject to eviction/termination. Pods that are part of a PodGroup (.spec.schedulingGroup is set) are not supported.
  const EvictionTarget({
    this.pod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pod': ?pulumi.Input.mapOptionalInputValue<EvictionPodReference, Map<String, dynamic>>(pod, (value) => value.toMap()),
    };
  }

  factory EvictionTarget.fromMap(Map<String, dynamic> map) {
    return EvictionTarget(
      pod: (() { final guardedValue = map['pod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvictionPodReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
