// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_controller_condition_patch.dart';

/// ReplicationControllerStatus represents the current status of a replication controller.
class ReplicationControllerStatusPatch {
  /// The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  final pulumi.Input<int>? availableReplicas;
  /// Represents the latest available observations of a replication controller's current state.
  final pulumi.Input<List<ReplicationControllerConditionPatch>>? conditions;
  /// The number of pods that have labels matching the labels of the pod template of the replication controller.
  final pulumi.Input<int>? fullyLabeledReplicas;
  /// ObservedGeneration reflects the generation of the most recently observed replication controller.
  final pulumi.Input<int>? observedGeneration;
  /// The number of ready replicas for this replication controller.
  final pulumi.Input<int>? readyReplicas;
  /// Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  final pulumi.Input<int>? replicas;

  /// Creates a new [ReplicationControllerStatusPatch].
  /// [availableReplicas] The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  /// [conditions] Represents the latest available observations of a replication controller's current state.
  /// [fullyLabeledReplicas] The number of pods that have labels matching the labels of the pod template of the replication controller.
  /// [observedGeneration] ObservedGeneration reflects the generation of the most recently observed replication controller.
  /// [readyReplicas] The number of ready replicas for this replication controller.
  /// [replicas] Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  ReplicationControllerStatusPatch({
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
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ReplicationControllerConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ReplicationControllerConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullyLabeledReplicas': ?fullyLabeledReplicas,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': ?replicas,
    };
  }

  factory ReplicationControllerStatusPatch.fromMap(Map<String, dynamic> map) {
    return ReplicationControllerStatusPatch(
      availableReplicas: map['availableReplicas'] == null ? null : (map['availableReplicas'] as int).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ReplicationControllerConditionPatch>(map['conditions'], (value) => ReplicationControllerConditionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fullyLabeledReplicas: map['fullyLabeledReplicas'] == null ? null : (map['fullyLabeledReplicas'] as int).input(),
      observedGeneration: map['observedGeneration'] == null ? null : (map['observedGeneration'] as int).input(),
      readyReplicas: map['readyReplicas'] == null ? null : (map['readyReplicas'] as int).input(),
      replicas: map['replicas'] == null ? null : (map['replicas'] as int).input(),
    );
  }
}

