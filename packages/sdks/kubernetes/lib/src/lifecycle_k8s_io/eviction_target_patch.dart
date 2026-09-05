// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eviction_pod_reference_patch.dart';

/// EvictionTarget contains a reference to an object that should be evicted.
class EvictionTargetPatch {
  /// pod references a pod that is subject to eviction/termination. Pods that are part of a PodGroup (.spec.schedulingGroup is set) are not supported.
  final pulumi.Input<EvictionPodReferencePatch?>? pod;

  /// Creates a new [EvictionTargetPatch].
  /// [pod] pod references a pod that is subject to eviction/termination. Pods that are part of a PodGroup (.spec.schedulingGroup is set) are not supported.
  const EvictionTargetPatch({
    this.pod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pod': ?pulumi.Input.mapOptionalInputValue<EvictionPodReferencePatch, Map<String, dynamic>>(pod, (value) => value.toMap()),
    };
  }

  factory EvictionTargetPatch.fromMap(Map<String, dynamic> map) {
    return EvictionTargetPatch(
      pod: (() { final guardedValue = map['pod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvictionPodReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
