// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_set_condition_patch.dart';

/// ReplicaSetStatus represents the current status of a ReplicaSet.
class ReplicaSetStatusPatch {
  /// The number of available replicas (ready for at least minReadySeconds) for this replica set.
  final pulumi.Input<int>? availableReplicas;
  /// Represents the latest available observations of a replica set's current state.
  final pulumi.Input<List<ReplicaSetConditionPatch>>? conditions;
  /// The number of pods that have labels matching the labels of the pod template of the replicaset.
  final pulumi.Input<int>? fullyLabeledReplicas;
  /// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  final pulumi.Input<int>? observedGeneration;
  /// The number of ready replicas for this replica set.
  final pulumi.Input<int>? readyReplicas;
  /// Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  final pulumi.Input<int>? replicas;

  /// Creates a new [ReplicaSetStatusPatch].
  /// [availableReplicas] The number of available replicas (ready for at least minReadySeconds) for this replica set.
  /// [conditions] Represents the latest available observations of a replica set's current state.
  /// [fullyLabeledReplicas] The number of pods that have labels matching the labels of the pod template of the replicaset.
  /// [observedGeneration] ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  /// [readyReplicas] The number of ready replicas for this replica set.
  /// [replicas] Replicas is the most recently oberved number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  ReplicaSetStatusPatch({
    this.availableReplicas,
    this.conditions,
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableReplicas': ?availableReplicas,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ReplicaSetConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ReplicaSetConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullyLabeledReplicas': ?fullyLabeledReplicas,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
    };
  }

  factory ReplicaSetStatusPatch.fromMap(Map<String, dynamic> map) {
    return ReplicaSetStatusPatch(
      availableReplicas: (() { final guardedValue = map['availableReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicaSetConditionPatch>(guardedValue, (value) => ReplicaSetConditionPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fullyLabeledReplicas: (() { final guardedValue = map['fullyLabeledReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readyReplicas: (() { final guardedValue = map['readyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

