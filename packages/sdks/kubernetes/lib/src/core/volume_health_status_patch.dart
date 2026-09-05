// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_health_condition_patch.dart';

/// VolumeHealthStatus contains health information for a volume reported by the CSI controller plugin.
class VolumeHealthStatusPatch {
  /// conditions is the set of adverse conditions reported by the CSI controller plugin. An empty list means no adverse condition. At most 16 conditions may be reported.
  final pulumi.Input<List<VolumeHealthConditionPatch>?>? healthConditions;
  /// lastTransitionTime is when the current set of conditions first appeared.
  final pulumi.Input<String?>? lastTransitionTime;

  /// Creates a new [VolumeHealthStatusPatch].
  /// [healthConditions] conditions is the set of adverse conditions reported by the CSI controller plugin. An empty list means no adverse condition. At most 16 conditions may be reported.
  /// [lastTransitionTime] lastTransitionTime is when the current set of conditions first appeared.
  const VolumeHealthStatusPatch({
    this.healthConditions,
    this.lastTransitionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthConditions': ?pulumi.Input.mapOptionalInputValue<List<VolumeHealthConditionPatch>, List<Map<String, dynamic>>>(healthConditions, (value) => pulumi.Input.encodeList<VolumeHealthConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastTransitionTime': ?lastTransitionTime,
    };
  }

  factory VolumeHealthStatusPatch.fromMap(Map<String, dynamic> map) {
    return VolumeHealthStatusPatch(
      healthConditions: (() { final guardedValue = map['healthConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeHealthConditionPatch>(guardedValue, (value) => VolumeHealthConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
