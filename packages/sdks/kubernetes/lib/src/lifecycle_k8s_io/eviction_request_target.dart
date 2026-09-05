// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eviction_request_pod_reference.dart';

/// EvictionRequestTarget contains a reference to an object that should be evicted.
class EvictionRequestTarget {
  /// pod references a pod that is subject to eviction/termination. Pods that are part of a PodGroup (.spec.schedulingGroup is set) are not supported.
  final pulumi.Input<EvictionRequestPodReference?>? pod;

  /// Creates a new [EvictionRequestTarget].
  /// [pod] pod references a pod that is subject to eviction/termination. Pods that are part of a PodGroup (.spec.schedulingGroup is set) are not supported.
  const EvictionRequestTarget({
    this.pod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pod': ?pulumi.Input.mapOptionalInputValue<EvictionRequestPodReference, Map<String, dynamic>>(pod, (value) => value.toMap()),
    };
  }

  factory EvictionRequestTarget.fromMap(Map<String, dynamic> map) {
    return EvictionRequestTarget(
      pod: (() { final guardedValue = map['pod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvictionRequestPodReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
