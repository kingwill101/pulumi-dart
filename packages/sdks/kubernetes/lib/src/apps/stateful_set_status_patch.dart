// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_set_condition_patch.dart';

/// StatefulSetStatus represents the current state of a StatefulSet.
class StatefulSetStatusPatch {
  /// Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
  final pulumi.Input<int?>? availableReplicas;
  /// collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final pulumi.Input<int?>? collisionCount;
  /// Represents the latest available observations of a statefulset's current state.
  final pulumi.Input<List<StatefulSetConditionPatch>?>? conditions;
  /// currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  final pulumi.Input<int?>? currentReplicas;
  /// currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  final pulumi.Input<String?>? currentRevision;
  /// observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  final pulumi.Input<int?>? observedGeneration;
  /// readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
  final pulumi.Input<int?>? readyReplicas;
  /// replicas is the number of Pods created by the StatefulSet controller.
  final pulumi.Input<int?>? replicas;
  /// updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  final pulumi.Input<String?>? updateRevision;
  /// updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  final pulumi.Input<int?>? updatedReplicas;

  /// Creates a new [StatefulSetStatusPatch].
  /// [availableReplicas] Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
  /// [collisionCount] collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  /// [conditions] Represents the latest available observations of a statefulset's current state.
  /// [currentReplicas] currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  /// [currentRevision] currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  /// [observedGeneration] observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  /// [readyReplicas] readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
  /// [replicas] replicas is the number of Pods created by the StatefulSet controller.
  /// [updateRevision] updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  /// [updatedReplicas] updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  const StatefulSetStatusPatch({
    this.availableReplicas,
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
      'availableReplicas': ?availableReplicas,
      'collisionCount': ?collisionCount,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<StatefulSetConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<StatefulSetConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentReplicas': ?currentReplicas,
      'currentRevision': ?currentRevision,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
      'updateRevision': ?updateRevision,
      'updatedReplicas': ?updatedReplicas,
    };
  }

  factory StatefulSetStatusPatch.fromMap(Map<String, dynamic> map) {
    return StatefulSetStatusPatch(
      availableReplicas: (() { final guardedValue = map['availableReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      collisionCount: (() { final guardedValue = map['collisionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatefulSetConditionPatch>(guardedValue, (value) => StatefulSetConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      currentReplicas: (() { final guardedValue = map['currentReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      currentRevision: (() { final guardedValue = map['currentRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      readyReplicas: (() { final guardedValue = map['readyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      updateRevision: (() { final guardedValue = map['updateRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedReplicas: (() { final guardedValue = map['updatedReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
