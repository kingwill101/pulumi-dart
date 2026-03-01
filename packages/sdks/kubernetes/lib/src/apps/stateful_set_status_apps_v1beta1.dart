// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_set_condition_apps_v1beta1.dart';

/// StatefulSetStatus represents the current state of a StatefulSet.
class StatefulSetStatusAppsV1beta1 {
  /// collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  final int? collisionCount;
  /// Represents the latest available observations of a statefulset's current state.
  final List<StatefulSetConditionAppsV1beta1>? conditions;
  /// currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  final int? currentReplicas;
  /// currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  final String? currentRevision;
  /// observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  final int? observedGeneration;
  /// readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
  final int? readyReplicas;
  /// replicas is the number of Pods created by the StatefulSet controller.
  final int replicas;
  /// updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  final String? updateRevision;
  /// updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  final int? updatedReplicas;

  /// Creates a new [StatefulSetStatusAppsV1beta1].
  /// [collisionCount] collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  /// [conditions] Represents the latest available observations of a statefulset's current state.
  /// [currentReplicas] currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  /// [currentRevision] currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  /// [observedGeneration] observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  /// [readyReplicas] readyReplicas is the number of Pods created by the StatefulSet controller that have a Ready Condition.
  /// [replicas] replicas is the number of Pods created by the StatefulSet controller.
  /// [updateRevision] updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  /// [updatedReplicas] updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  StatefulSetStatusAppsV1beta1({
    this.collisionCount,
    this.conditions,
    this.currentReplicas,
    this.currentRevision,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
    this.updateRevision,
    this.updatedReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collisionCount': ?collisionCount,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<StatefulSetConditionAppsV1beta1, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'currentReplicas': ?currentReplicas,
      'currentRevision': ?currentRevision,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': replicas,
      'updateRevision': ?updateRevision,
      'updatedReplicas': ?updatedReplicas,
    };
  }

  factory StatefulSetStatusAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return StatefulSetStatusAppsV1beta1(
      collisionCount: map['collisionCount'] == null ? null : map['collisionCount'] as int,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<StatefulSetConditionAppsV1beta1>(map['conditions'], (value) => StatefulSetConditionAppsV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      currentReplicas: map['currentReplicas'] == null ? null : map['currentReplicas'] as int,
      currentRevision: map['currentRevision'] == null ? null : map['currentRevision'] as String,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      readyReplicas: map['readyReplicas'] == null ? null : map['readyReplicas'] as int,
      replicas: map['replicas'] as int,
      updateRevision: map['updateRevision'] == null ? null : map['updateRevision'] as String,
      updatedReplicas: map['updatedReplicas'] == null ? null : map['updatedReplicas'] as int,
    );
  }
}

