// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_set_condition.dart';

/// ReplicaSetStatus represents the current status of a ReplicaSet.
class ReplicaSetStatus {
  /// The number of available non-terminating pods (ready for at least minReadySeconds) for this replica set.
  final pulumi.Input<int>? availableReplicas;
  /// Represents the latest available observations of a replica set's current state.
  final pulumi.Input<List<ReplicaSetCondition>>? conditions;
  /// The number of non-terminating pods that have labels matching the labels of the pod template of the replicaset.
  final pulumi.Input<int>? fullyLabeledReplicas;
  /// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  final pulumi.Input<int>? observedGeneration;
  /// The number of non-terminating pods targeted by this ReplicaSet with a Ready Condition.
  final pulumi.Input<int>? readyReplicas;
  /// Replicas is the most recently observed number of non-terminating pods. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset
  final pulumi.Input<int> replicas;
  /// The number of terminating pods for this replica set. Terminating pods have a non-null .metadata.deletionTimestamp and have not yet reached the Failed or Succeeded .status.phase.
  ///
  /// This is a beta field and requires enabling DeploymentReplicaSetTerminatingReplicas feature (enabled by default).
  final pulumi.Input<int>? terminatingReplicas;

  /// Creates a new [ReplicaSetStatus].
  /// [availableReplicas] The number of available non-terminating pods (ready for at least minReadySeconds) for this replica set.
  /// [conditions] Represents the latest available observations of a replica set's current state.
  /// [fullyLabeledReplicas] The number of non-terminating pods that have labels matching the labels of the pod template of the replicaset.
  /// [observedGeneration] ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  /// [readyReplicas] The number of non-terminating pods targeted by this ReplicaSet with a Ready Condition.
  /// [replicas] Replicas is the most recently observed number of non-terminating pods. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset
  /// [terminatingReplicas] The number of terminating pods for this replica set. Terminating pods have a non-null .metadata.deletionTimestamp and have not yet reached the Failed or Succeeded .status.phase.
  ReplicaSetStatus({
    this.availableReplicas,
    this.conditions,
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
    this.terminatingReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableReplicas': ?availableReplicas,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ReplicaSetCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ReplicaSetCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullyLabeledReplicas': ?fullyLabeledReplicas,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': replicas,
      'terminatingReplicas': ?terminatingReplicas,
    };
  }

  factory ReplicaSetStatus.fromMap(Map<String, dynamic> map) {
    return ReplicaSetStatus(
      availableReplicas: map['availableReplicas'] == null ? null : (map['availableReplicas'] as int).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ReplicaSetCondition>(map['conditions'], (value) => ReplicaSetCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fullyLabeledReplicas: map['fullyLabeledReplicas'] == null ? null : (map['fullyLabeledReplicas'] as int).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration'] as int).input(),
      readyReplicas: map['readyReplicas'] == null ? null : (map['readyReplicas'] as int).input(),
      replicas: (map['replicas'] as int).input(),
      terminatingReplicas: map['terminatingReplicas'] == null ? null : (map['terminatingReplicas'] as int).input(),
    );
  }
}

