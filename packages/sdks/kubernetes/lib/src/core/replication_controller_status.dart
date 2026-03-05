// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_controller_condition.dart';

/// ReplicationControllerStatus represents the current status of a replication controller.
class ReplicationControllerStatus {
  /// The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  final pulumi.Input<int>? availableReplicas;
  /// Represents the latest available observations of a replication controller's current state.
  final pulumi.Input<List<ReplicationControllerCondition>>? conditions;
  /// The number of pods that have labels matching the labels of the pod template of the replication controller.
  final pulumi.Input<int>? fullyLabeledReplicas;
  /// ObservedGeneration reflects the generation of the most recently observed replication controller.
  final pulumi.Input<int>? observedGeneration;
  /// The number of ready replicas for this replication controller.
  final pulumi.Input<int>? readyReplicas;
  /// Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  final pulumi.Input<int> replicas;

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
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ReplicationControllerCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ReplicationControllerCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fullyLabeledReplicas': ?fullyLabeledReplicas,
      'observedGeneration': ?observedGeneration,
      'readyReplicas': ?readyReplicas,
      'replicas': replicas,
    };
  }

  factory ReplicationControllerStatus.fromMap(Map<String, dynamic> map) {
    return ReplicationControllerStatus(
      availableReplicas: (() { final guardedValue = map['availableReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicationControllerCondition>(guardedValue, (value) => ReplicationControllerCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fullyLabeledReplicas: (() { final guardedValue = map['fullyLabeledReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      readyReplicas: (() { final guardedValue = map['readyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicas: pulumi.Input.fromValue(map['replicas'] as int),
    );
  }
}

