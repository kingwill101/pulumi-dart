// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_health_condition_patch.dart';

/// PodVolumeHealth contains health information for a volume used by a pod, reported by the CSI node plugin via the kubelet.
class PodVolumeHealthPatch {
  /// conditions is the set of adverse conditions reported by the CSI node plugin for this volume on this node. At most 16 conditions may be reported.
  final pulumi.Input<List<VolumeHealthConditionPatch>?>? healthConditions;
  /// lastTransitionTime is when the current set of conditions first appeared.
  final pulumi.Input<String?>? lastTransitionTime;
  /// name matches an entry in pod.spec.volumes.
  final pulumi.Input<String?>? name;

  /// Creates a new [PodVolumeHealthPatch].
  /// [healthConditions] conditions is the set of adverse conditions reported by the CSI node plugin for this volume on this node. At most 16 conditions may be reported.
  /// [lastTransitionTime] lastTransitionTime is when the current set of conditions first appeared.
  /// [name] name matches an entry in pod.spec.volumes.
  const PodVolumeHealthPatch({
    this.healthConditions,
    this.lastTransitionTime,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthConditions': ?pulumi.Input.mapOptionalInputValue<List<VolumeHealthConditionPatch>, List<Map<String, dynamic>>>(healthConditions, (value) => pulumi.Input.encodeList<VolumeHealthConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastTransitionTime': ?lastTransitionTime,
      'name': ?name,
    };
  }

  factory PodVolumeHealthPatch.fromMap(Map<String, dynamic> map) {
    return PodVolumeHealthPatch(
      healthConditions: (() { final guardedValue = map['healthConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeHealthConditionPatch>(guardedValue, (value) => VolumeHealthConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
