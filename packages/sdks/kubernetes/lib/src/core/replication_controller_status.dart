// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_controller_condition.dart';

/// ReplicationControllerStatus represents the current status of a replication controller.
class ReplicationControllerStatus {
  /// The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  final int? availableReplicas;
  /// Represents the latest available observations of a replication controller's current state.
  final List<ReplicationControllerCondition>? conditions;
  /// The number of pods that have labels matching the labels of the pod template of the replication controller.
  final int? fullyLabeledReplicas;
  /// ObservedGeneration reflects the generation of the most recently observed replication controller.
  final int? observedGeneration;
  /// The number of ready replicas for this replication controller.
  final int? readyReplicas;
  /// Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  final int replicas;

  /// Creates a new [ReplicationControllerStatus].
  /// [availableReplicas] The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  /// [conditions] Represents the latest available observations of a replication controller's current state.
  /// [fullyLabeledReplicas] The number of pods that have labels matching the labels of the pod template of the replication controller.
  /// [observedGeneration] ObservedGeneration reflects the generation of the most recently observed replication controller.
  /// [readyReplicas] The number of ready replicas for this replication controller.
  /// [replicas] Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  ReplicationControllerStatus({
    this.availableReplicas,
    this.conditions,
    this.fullyLabeledReplicas,
    this.observedGeneration,
    this.readyReplicas,
    required this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableReplicas': ?availableReplicas,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ReplicationControllerCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'fullyLabeledReplicas': ?fullyLabeledReplicas,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': replicas,
    };
  }

  factory ReplicationControllerStatus.fromMap(Map<String, dynamic> map) {
    return ReplicationControllerStatus(
      availableReplicas: map['availableReplicas'] == null ? null : map['availableReplicas'] as int,
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ReplicationControllerCondition>(map['conditions'], (value) => ReplicationControllerCondition.fromMap((value as Map).cast<String, dynamic>())),
      fullyLabeledReplicas: map['fullyLabeledReplicas'] == null ? null : map['fullyLabeledReplicas'] as int,
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      readyReplicas: map['readyReplicas'] == null ? null : map['readyReplicas'] as int,
      replicas: map['replicas'] as int,
    );
  }
}

