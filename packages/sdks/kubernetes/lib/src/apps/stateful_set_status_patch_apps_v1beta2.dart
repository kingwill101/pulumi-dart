// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_set_condition_patch_apps_v1beta2.dart';

/// StatefulSetStatus represents the current state of a StatefulSet.
class StatefulSetStatusPatchAppsV1beta2 {
  /// collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final pulumi.Input<int>? collisionCount;
  /// Represents the latest available observations of a statefulset's current state.
  final pulumi.Input<List<StatefulSetConditionPatchAppsV1beta2>>? conditions;
  /// currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  final pulumi.Input<int>? currentReplicas;
  /// currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  final pulumi.Input<String>? currentRevision;
  /// observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  final pulumi.Input<int>? observedGeneration;
  /// readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
  final pulumi.Input<int>? readyReplicas;
  /// replicas is the number of Pods created by the StatefulSet controller.
  final pulumi.Input<int>? replicas;
  /// updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  final pulumi.Input<String>? updateRevision;
  /// updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  final pulumi.Input<int>? updatedReplicas;

  /// Creates a new [StatefulSetStatusPatchAppsV1beta2].
  /// [collisionCount] collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  /// [conditions] Represents the latest available observations of a statefulset's current state.
  /// [currentReplicas] currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  /// [currentRevision] currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  /// [observedGeneration] observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  /// [readyReplicas] readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
  /// [replicas] replicas is the number of Pods created by the StatefulSet controller.
  /// [updateRevision] updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  /// [updatedReplicas] updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  const StatefulSetStatusPatchAppsV1beta2({
    this.collisionCount,
    this.conditions,
    this.currentReplicas,
    this.currentRevision,
    this.observedGeneration,
    this.readyReplicas,
    this.replicas,
    this.updateRevision,
    this.updatedReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collisionCount': ?collisionCount,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<StatefulSetConditionPatchAppsV1beta2>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<StatefulSetConditionPatchAppsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentReplicas': ?currentReplicas,
      'currentRevision': ?currentRevision,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
      'updateRevision': ?updateRevision,
      'updatedReplicas': ?updatedReplicas,
    };
  }

  factory StatefulSetStatusPatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return StatefulSetStatusPatchAppsV1beta2(
      collisionCount: (() { final guardedValue = map['collisionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatefulSetConditionPatchAppsV1beta2>(guardedValue, (value) => StatefulSetConditionPatchAppsV1beta2.fromMap((value as Map).cast<String, dynamic>()))); })(),
      currentReplicas: (() { final guardedValue = map['currentReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      currentRevision: (() { final guardedValue = map['currentRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readyReplicas: (() { final guardedValue = map['readyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updateRevision: (() { final guardedValue = map['updateRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedReplicas: (() { final guardedValue = map['updatedReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
