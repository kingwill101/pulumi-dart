// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_set_condition_patch.dart';

/// ReplicaSetStatus represents the current status of a ReplicaSet.
class ReplicaSetStatusPatch {
  /// The number of available non-terminating pods (ready for at least minReadySeconds) for this replica set.
  final pulumi.Input<int>? availableReplicas;
  /// Represents the latest available observations of a replica set's current state.
  final pulumi.Input<List<ReplicaSetConditionPatch>>? conditions;
  /// The number of non-terminating pods that have labels matching the labels of the pod template of the replicaset.
  final pulumi.Input<int>? fullyLabeledReplicas;
  /// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  final pulumi.Input<int>? observedGeneration;
  /// The number of non-terminating pods targeted by this ReplicaSet with a Ready Condition.
  final pulumi.Input<int>? readyReplicas;
  /// Replicas is the most recently observed number of non-terminating pods. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset
  final pulumi.Input<int>? replicas;
  /// The number of terminating pods for this replica set. Terminating pods have a non-null .metadata.deletionTimestamp and have not yet reached the Failed or Succeeded .status.phase.
  ///
  /// This is a beta field and requires enabling DeploymentReplicaSetTerminatingReplicas feature (enabled by default).
  final pulumi.Input<int>? terminatingReplicas;

  /// Creates a new [ReplicaSetStatusPatch].
  /// [availableReplicas] The number of available non-terminating pods (ready for at least minReadySeconds) for this replica set.
  /// [conditions] Represents the latest available observations of a replica set's current state.
  /// [fullyLabeledReplicas] The number of non-terminating pods that have labels matching the labels of the pod template of the replicaset.
  /// [observedGeneration] ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  /// [readyReplicas] The number of non-terminating pods targeted by this ReplicaSet with a Ready Condition.
  /// [replicas] Replicas is the most recently observed number of non-terminating pods. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset
  /// [terminatingReplicas] The number of terminating pods for this replica set. Terminating pods have a non-null .metadata.deletionTimestamp and have not yet reached the Failed or Succeeded .status.phase.
  ReplicaSetStatusPatch({
    this.availableReplicas,
    this.conditions,
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    this.replicas,
    this.terminatingReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableReplicas': ?availableReplicas,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ReplicaSetConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ReplicaSetConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullyLabeledReplicas': ?fullyLabeledReplicas,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
      'terminatingReplicas': ?terminatingReplicas,
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
      terminatingReplicas: (() { final guardedValue = map['terminatingReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

