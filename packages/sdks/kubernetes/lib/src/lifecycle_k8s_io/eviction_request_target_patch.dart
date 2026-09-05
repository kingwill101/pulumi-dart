// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eviction_request_pod_reference_patch.dart';

/// EvictionRequestTarget contains a reference to an object that should be evicted.
class EvictionRequestTargetPatch {
  /// pod references a pod that is subject to eviction/termination. Pods that are part of a PodGroup (.spec.schedulingGroup is set) are not supported.
  final pulumi.Input<EvictionRequestPodReferencePatch?>? pod;

  /// Creates a new [EvictionRequestTargetPatch].
  /// [pod] pod references a pod that is subject to eviction/termination. Pods that are part of a PodGroup (.spec.schedulingGroup is set) are not supported.
  const EvictionRequestTargetPatch({
    this.pod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pod': ?pulumi.Input.mapOptionalInputValue<EvictionRequestPodReferencePatch, Map<String, dynamic>>(pod, (value) => value.toMap()),
    };
  }

  factory EvictionRequestTargetPatch.fromMap(Map<String, dynamic> map) {
    return EvictionRequestTargetPatch(
      pod: (() { final guardedValue = map['pod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvictionRequestPodReferencePatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
