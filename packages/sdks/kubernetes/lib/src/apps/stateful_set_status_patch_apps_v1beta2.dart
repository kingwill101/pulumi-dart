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
  StatefulSetStatusPatchAppsV1beta2({
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
      collisionCount: map['collisionCount'] == null ? null : (map['collisionCount']! as int).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<StatefulSetConditionPatchAppsV1beta2>(map['conditions']!, (value) => StatefulSetConditionPatchAppsV1beta2.fromMap((value as Map).cast<String, dynamic>()))).input(),
      currentReplicas: map['currentReplicas'] == null ? null : (map['currentReplicas']! as int).input(),
      currentRevision: map['currentRevision'] == null ? null : (map['currentRevision']! as String).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration']! as int).input(),
      readyReplicas: map['readyReplicas'] == null ? null : (map['readyReplicas']! as int).input(),
      replicas: map['replicas'] == null ? null : (map['replicas']! as int).input(),
      updateRevision: map['updateRevision'] == null ? null : (map['updateRevision']! as String).input(),
      updatedReplicas: map['updatedReplicas'] == null ? null : (map['updatedReplicas']! as int).input(),
    );
  }
}

