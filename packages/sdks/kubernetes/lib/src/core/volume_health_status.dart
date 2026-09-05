// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_health_condition.dart';

/// VolumeHealthStatus contains health information for a volume reported by the CSI controller plugin.
class VolumeHealthStatus {
  /// conditions is the set of adverse conditions reported by the CSI controller plugin. An empty list means no adverse condition. At most 16 conditions may be reported.
  final pulumi.Input<List<VolumeHealthCondition>?>? healthConditions;
  /// lastTransitionTime is when the current set of conditions first appeared.
  final pulumi.Input<String?>? lastTransitionTime;

  /// Creates a new [VolumeHealthStatus].
  /// [healthConditions] conditions is the set of adverse conditions reported by the CSI controller plugin. An empty list means no adverse condition. At most 16 conditions may be reported.
  /// [lastTransitionTime] lastTransitionTime is when the current set of conditions first appeared.
  const VolumeHealthStatus({
    this.healthConditions,
    this.lastTransitionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthConditions': ?pulumi.Input.mapOptionalInputValue<List<VolumeHealthCondition>, List<Map<String, dynamic>>>(healthConditions, (value) => pulumi.Input.encodeList<VolumeHealthCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastTransitionTime': ?lastTransitionTime,
    };
  }

  factory VolumeHealthStatus.fromMap(Map<String, dynamic> map) {
    return VolumeHealthStatus(
      healthConditions: (() { final guardedValue = map['healthConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeHealthCondition>(guardedValue, (value) => VolumeHealthCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastTransitionTime: (() { final guardedValue = map['lastTransitionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
