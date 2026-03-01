// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_set_condition.dart';

/// ReplicaSetStatus represents the current status of a ReplicaSet.
class ReplicaSetStatus {
  /// The number of available non-terminating pods (ready for at least minReadySeconds) for this replica set.
  final int? availableReplicas;
  /// Represents the latest available observations of a replica set's current state.
  final List<ReplicaSetCondition>? conditions;
  /// The number of non-terminating pods that have labels matching the labels of the pod template of the replicaset.
  final int? fullyLabeledReplicas;
  /// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  final int? observedGeneration;
  /// The number of non-terminating pods targeted by this ReplicaSet with a Ready Condition.
  final int? readyReplicas;
  /// Replicas is the most recently observed number of non-terminating pods. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicaset
  final int replicas;
  /// The number of terminating pods for this replica set. Terminating pods have a non-null .metadata.deletionTimestamp and have not yet reached the Failed or Succeeded .status.phase.
  ///
  /// This is a beta field and requires enabling DeploymentReplicaSetTerminatingReplicas feature (enabled by default).
  final int? terminatingReplicas;

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
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ReplicaSetCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'fullyLabeledReplicas': ?fullyLabeledReplicas,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': replicas,
      'terminatingReplicas': ?terminatingReplicas,
    };
  }

  factory ReplicaSetStatus.fromMap(Map<String, dynamic> map) {
    return ReplicaSetStatus(
      availableReplicas: map['availableReplicas'] == null ? null : map['availableReplicas'] as int,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ReplicaSetCondition>(map['conditions'], (value) => ReplicaSetCondition.fromMap((value as Map).cast<String, dynamic>())),
      fullyLabeledReplicas: map['fullyLabeledReplicas'] == null ? null : map['fullyLabeledReplicas'] as int,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      readyReplicas: map['readyReplicas'] == null ? null : map['readyReplicas'] as int,
      replicas: map['replicas'] as int,
      terminatingReplicas: map['terminatingReplicas'] == null ? null : map['terminatingReplicas'] as int,
    );
  }
}

