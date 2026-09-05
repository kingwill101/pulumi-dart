// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_health_condition.dart';

/// PodVolumeHealth contains health information for a volume used by a pod, reported by the CSI node plugin via the kubelet.
class PodVolumeHealth {
  /// conditions is the set of adverse conditions reported by the CSI node plugin for this volume on this node. At most 16 conditions may be reported.
  final pulumi.Input<List<VolumeHealthCondition>?>? healthConditions;
  /// lastTransitionTime is when the current set of conditions first appeared.
  final pulumi.Input<String?>? lastTransitionTime;
  /// name matches an entry in pod.spec.volumes.
  final pulumi.Input<String> name;

  /// Creates a new [PodVolumeHealth].
  /// [healthConditions] conditions is the set of adverse conditions reported by the CSI node plugin for this volume on this node. At most 16 conditions may be reported.
  /// [lastTransitionTime] lastTransitionTime is when the current set of conditions first appeared.
  /// [name] name matches an entry in pod.spec.volumes.
  const PodVolumeHealth({
    this.healthConditions,
    this.lastTransitionTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthConditions': ?pulumi.Input.mapOptionalInputValue<List<VolumeHealthCondition>, List<Map<String, dynamic>>>(healthConditions, (value) => pulumi.Input.encodeList<VolumeHealthCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastTransitionTime': ?lastTransitionTime,
      'name': name,
    };
  }

  factory PodVolumeHealth.fromMap(Map<String, dynamic> map) {
    return PodVolumeHealth(
      healthConditions: (() { final guardedValue = map['healthConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeHealthCondition>(guardedValue, (value) => VolumeHealthCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
